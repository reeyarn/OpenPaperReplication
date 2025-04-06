*----------------------------------------------------------------------------*;
* SAS Code to Replicate Key Analyses from:                                   *;
* "A Fundamental-Analysis-Based Test for Speculative Prices" by Asher Curtis *;
* The Accounting Review, January 2012                                        *;
*----------------------------------------------------------------------------*;
* Programmer: Generated based on user request and paper description          *;
* Date:       [Current Date]                                                 *;
*----------------------------------------------------------------------------*;
* Purpose:                                                                   *;
* 1. Prepare monthly aggregate market value and fundamental value indices.   *;
* 2. Calculate the log fundamental-to-price ratio.                           *;
* 3. Perform Phillips-Perron unit root tests for cointegration analysis.     *;
*----------------------------------------------------------------------------*;
* Data Sources Required:                                                     *;
* 1. COMPUSTAT North America - Fundamentals Annual (e.g., comp.funda)       *;
* 2. CRSP Monthly Stock File (e.g., crsp.msf)                               *;
* 3. CRSP/Compustat Merged Link Table (e.g., crsp.ccmxpf_linktable)         *;
* 4. Treasury Constant Maturity Yield Data (MISSING - See Note)            *;
*----------------------------------------------------------------------------*;
* Notes:                                                                     *;
* - This code aims to replicate the core analysis based on the paper's text. *;
*   Specific implementation choices (e.g., exact lag handling, missing data) *;
*   might differ slightly if not fully detailed in the paper.                *;
* - *** MISSING DATA SOURCE ***: The paper uses the 3-year Treasury         *;
*   constant-yield-to-maturity bond rate. This data is NOT standard in      *;
*   CRSP or Compustat. It needs to be obtained externally, e.g., from the   *;
*   Federal Reserve Economic Data (FRED) database (series DGS3), potentially *;
*   via WRDS Federal Reserve Banks data or direct download. The code below   *;
*   includes a placeholder step for merging this data.                       *;
* - Assumes standard WRDS library names (comp, crsp). Adjust if needed.      *;
* - The paper spans 1979-2008. Fiscal data from ~1977 might be needed for    *;
*   calculations starting in Jan 1979.                                       *;
*----------------------------------------------------------------------------*;

* --- Macro Variables --- *;
%let start_year = 1979;
%let end_year = 2008;
%let start_date = '01JAN&start_year'd;
%let end_date = '31DEC&end_year'd;
%let comp_start_year = %eval(&start_year - 2); /* Go back further for lags */
%let comp_end_year = &end_year;
%let equity_premium = 0.06; /* 6% equity premium */
%let growth_rate = 0.03;    /* 3% perpetual growth rate (g) */
%let report_lag_mths = 4;   /* Months after FYE until data is assumed available */

* --- Libnames (Adjust if necessary) --- *;
libname comp '/wrds/comp/sasdata/na'; /* Example path */
libname crsp '/wrds/crsp/sasdata/a_stock'; /* Example path */
libname work '.';

*----------------------------------------------------------------------------*;
* Step 1: Prepare Compustat Annual Data                                      *;
*----------------------------------------------------------------------------*;
proc sql;
    create table comp_annual as
    select
        a.gvkey,
        a.datadate,
        a.fyear,
        a.fyr, /* Fiscal year end month */
        a.ceq, /* Common/Ordinary Equity - Total (Book Value) */
        a.ib,  /* Income Before Extraordinary Items (Earnings proxy) */
        a.dvc, /* Dividends Common/Ordinary */
        a.curcd /* Currency Code */
    from comp.funda as a
    where a.indfmt = 'INDL' /* Industrial format */
      and a.datafmt = 'STD' /* Standardized data format */
      and a.popsrc = 'D'  /* Domestic */
      and a.consol = 'C'  /* Consolidated */
      and a.curcd = 'USD' /* US Dollar */
      and a.fyear between &comp_start_year and &comp_end_year
      and a.ceq is not null and a.ceq > 0 /* Filter for non-missing and positive book value */
      and a.ib is not null
      and a.datadate is not null
    order by gvkey, datadate;
quit;

data comp_annual;
    set comp.funda;
    where indfmt = 'INDL' /* Industrial format */
      and datafmt = 'STD' /* Standardized data format */
      and popsrc = 'D'  /* Domestic */
      and consol = 'C'  /* Consolidated */
      and curcd = 'USD' /* US Dollar */
      and fyear between &comp_start_year and &comp_end_year
      and ceq is not null and ceq > 0 /* Filter for non-missing and positive book value */
      and ib is not null
      and datadate is not null;
    keep gvkey datadate fyear fyr ceq ib dvc curcd;
run;

proc sort data=comp_annual;
    by gvkey datadate;
run;

* Calculate availability dates for Compustat data *;
data comp_monthly_avail;
    set comp_annual;
    by gvkey;

    * Calculate the date when the annual data is assumed available (end of month) *;
    avail_date = intnx('MONTH', datadate, &report_lag_mths, 'E');

    * Calculate the date until which this data is used (3 months after next FYE, end of month) *;
    * The next datadate is approx. 1 year later. 3 months after that is 15 months. *;
    end_avail_date = intnx('MONTH', datadate, 12 + 3, 'E'); /* Approx. 15 months after current FYE */

    * Ensure we only keep data relevant for the sample period calculation *;
    if year(end_avail_date) >= &start_year;

    format avail_date end_avail_date yymmddn8.;
    keep gvkey datadate fyear ceq ib dvc avail_date end_avail_date;
run;

* Expand Compustat data to monthly frequency based on availability window *;
data comp_expanded_monthly;
    set comp_monthly_avail;
    do month_date = avail_date to end_avail_date by 1;
        month_date = intnx('MONTH', month_date, 0, 'E'); /* Ensure it's month-end date */
        if year(month_date) >= &start_year and year(month_date) <= &end_year;
           output;
    end;
    format month_date yymmddn8.;
    keep gvkey month_date ceq ib dvc fyear datadate;
run;

proc sort data=comp_expanded_monthly;
    by gvkey month_date;
run;

*----------------------------------------------------------------------------*;
* Step 2: Prepare CRSP Monthly Data                                          *;
*----------------------------------------------------------------------------*;
data crsp_monthly;
    set crsp.msf(keep=permno permco date shrcd exchcd siccd prc shrout ret);
    where date between &start_date and &end_date;
    * Filter for common stocks (SHRCD 10 or 11) *;
    if shrcd in (10, 11);
    * Filter for major exchanges (NYSE, AMEX, NASDAQ) *;
    * Use HEXCD if available, otherwise EXCHCD *;
    if exists(hexcd) then do;
       if hexcd in (1, 2, 3);
    end;
    else if exists(exchcd) then do;
        if exchcd in (1, 2, 3);
    end;
    else keep; /* Keep if exchange code missing, maybe review later */

    * Calculate Market Cap (shrout is in 1000s) *;
    if prc ne . and shrout ne . and shrout > 0 then do;
       price = abs(prc); /* Use absolute price (CRSP uses negative for bid/ask avg) */
       market_cap = price * shrout * 1000;
    end;
    else do;
       price = .;
       market_cap = .;
    end;

    * Rename date to match Compustat monthly date *;
    month_date = intnx('MONTH', date, 0, 'E'); /* Ensure month-end */
    format month_date yymmddn8.;

    keep permno permco month_date price shrout market_cap ret;
run;

proc sort data=crsp_monthly;
    by permno month_date;
run;

*----------------------------------------------------------------------------*;
* Step 3: Link CRSP and Compustat                                            *;
*----------------------------------------------------------------------------*;
* Using CCM linking table *;
proc sql;
   create table ccm_link as
   select gvkey, lpermno as permno, linkdt, linkenddt, linktype, linkprim
   from crsp.ccmxpf_linktable
   where linktype in ('LC', 'LU') /* Link types for primary links */
     and linkprim in ('P', 'C')   /* Primary or Current link */
   ;
quit;

data crsp_comp_merged;
    merge crsp_monthly(in=a) ccm_link(in=b keep=gvkey permno linkdt linkenddt);
    by permno;
    where a; /* Keep only matches from CRSP */

    * Check if CRSP date is within link validity range *;
    if linkdt ne . and month_date >= linkdt and (linkenddt eq . or month_date <= linkenddt);
    else if linkdt eq . and (linkenddt eq . or month_date <= linkenddt); /* Handles cases starting from beginning */
    else if (linkdt ne . and month_date >= linkdt) and linkenddt eq .; /* Handles cases ending at end */
    else if linkdt eq . and linkenddt eq .; /* Handles links valid for all time */
    else delete; /* Delete if link not valid for this date */

    keep gvkey permno permco month_date price shrout market_cap ret;
run;

proc sort data=crsp_comp_merged nodupkey;
    by gvkey month_date; /* Keep unique gvkey-month combos, prefer CRSP primary if duplicates arose */
run;

*----------------------------------------------------------------------------*;
* Step 4: Merge CRSP/Compustat Linked data with Expanded Compustat           *;
*----------------------------------------------------------------------------*;
data firm_monthly_data;
    merge crsp_comp_merged(in=a) comp_expanded_monthly(in=b);
    by gvkey month_date;
    if a and b; /* Keep only firms with both CRSP and lagged Compustat data */

    * Keep relevant variables for aggregation and Vf calculation *;
    keep gvkey permno permco month_date market_cap ceq ib dvc ret;
run;

proc sort data=firm_monthly_data;
    by month_date gvkey;
run;

*----------------------------------------------------------------------------*;
* Step 5: Get Treasury Yield Data (Placeholder - NEEDS EXTERNAL DATA)        *;
*----------------------------------------------------------------------------*;
* This step requires sourcing 3-year constant maturity Treasury yields.      *;
* Assume you have a dataset named 'treasury_yields' like this:               *;
/*
data treasury_yields;
    input month_date yymmddn8. t3yr_yield;
    format month_date yymmddn8.;
datalines;
... [Data for 1979-01-31 to 2008-12-31] ...
;
run;
proc sort data=treasury_yields; by month_date; run;
*/

* Create placeholder if data is missing, WARNING: results will be incorrect *;
%macro create_placeholder_yields;
  data treasury_yields;
      do year = &start_year to &end_year;
          do month = 1 to 12;
              month_date = intnx('MONTH', mdy(month, 1, year), 0, 'E');
              if month_date >= &start_date and month_date <= &end_date then do;
                 * --- !!! THIS IS A PLACEHOLDER YIELD !!! --- *;
                 t3yr_yield = 4.0; /* Arbitrary constant yield - REPLACE WITH REAL DATA */
                 output;
              end;
          end;
      end;
      format month_date yymmddn8.;
      keep month_date t3yr_yield;
  run;
  proc sort data=treasury_yields; by month_date; run;
  %put WARNING: Using placeholder Treasury yield data. Results will be incorrect.;
  %put WARNING: Replace the 'treasury_yields' dataset with actual 3-year constant maturity rates.;
%mend create_placeholder_yields;

* --- Check if Treasury data exists, otherwise create placeholder --- *;
%if not %sysfunc(exist(work.treasury_yields)) %then %do;
    %create_placeholder_yields;
%end;
%else %do;
    %put NOTE: Using existing WORK.TREASURY_YIELDS dataset.;
%end;


*----------------------------------------------------------------------------*;
* Step 6: Calculate Firm-Level Fundamental Value (Vf(x))                     *;
*----------------------------------------------------------------------------*;
data firm_monthly_vf;
    merge firm_monthly_data(in=a) treasury_yields(in=b);
    by month_date;
    if a and b;

    * Calculate discount rate (r_t) - annual rate *;
    r_t = (t3yr_yield / 100) + &equity_premium;

    * Calculate residual income (RI) using f(1)=lagged IB *;
    ri = ib - r_t * ceq;

    * Calculate Vf(x) using Equation 11 *;
    if r_t > &growth_rate then do;
       vf_x = ceq + ri / (r_t - &growth_rate);
    end;
    else do;
       * Handle case where r <= g, perpetuity formula invalid. *;
       * Apply floor or alternative. Paper isn't explicit, flooring at CEQ seems plausible.*;
       vf_x = ceq;
    end;

    * Apply floor based on paper's description: *;
    * "Observations where residual income is negative... are retained, but *;
    *  with the residual income model estimate set equal to book-value." *;
    if ri <= 0 then vf_x = ceq;

    * Ensure Vf(x) is not missing if components are available *;
     if vf_x = . and ceq ne . and ib ne . and r_t ne . then vf_x = ceq; /* Fallback */

    keep gvkey month_date market_cap ceq dvc ib vf_x;
run;

*----------------------------------------------------------------------------*;
* Step 7: Aggregate Monthly Indices                                          *;
*----------------------------------------------------------------------------*;
proc means data=firm_monthly_vf noprint nway;
    class month_date;
    var market_cap ceq dvc ib vf_x;
    output out=aggregate_monthly_raw (drop=_type_ _freq_)
           sum= agg_p agg_b agg_d agg_ib agg_vfx;
run;

* Create log variables *;
data aggregate_monthly;
    set aggregate_monthly_raw;

    if agg_p > 0 then log_p = log(agg_p); else log_p = .;
    if agg_b > 0 then log_b = log(agg_b); else log_b = .;
    if agg_d > 0 then log_d = log(agg_d); else log_d = .; /* May be zero if no firms pay dividends */
    if agg_vfx > 0 then log_vfx = log(agg_vfx); else log_vfx = .;

    * Create log fundamental-to-price ratio (Vf(x)/P) *;
    if log_p ne . and log_vfx ne . then log_vfx_p = log_vfx - log_p; else log_vfx_p = .;

    * Create log book-to-price ratio (B/P) *;
    if log_p ne . and log_b ne . then log_b_p = log_b - log_p; else log_b_p = .;

    * Create log dividend-to-price ratio (D/P) *;
    if log_p ne . and log_d ne . then log_d_p = log_d - log_p; else log_d_p = .;

    * Create period variable for sub-period analysis *;
    if year(month_date) <= 1993 then period = '1979-1993 (Historical)';
    else period = '1994-2008 (Recent)';

    * Create time trend variable *;
    time = _N_;

    format month_date yymmddn8.;
run;

proc sort data=aggregate_monthly;
    by month_date;
run;

*----------------------------------------------------------------------------*;
* Step 8: Perform Stationarity (Unit Root / Cointegration) Tests             *;
*----------------------------------------------------------------------------*;

%macro run_pp_test(var=, dataset=, label=);
  %put NOTE: Running Phillips-Perron tests for &label (&var);

  * Test in Levels (Constant) *;
  proc autoreg data=&dataset outest=pp_results_&var._lvl_c;
     model &var = / stationarity=(pp=(trend=zero)) dwprob;
     output out=pp_diag_&var._lvl_c predicted=p residual=r;
     label &var = "&label (Levels, Constant Test)";
  run;
  ods output UnitRootTest=ur_&var._lvl_c;

  * Test in Levels (Constant + Trend) *;
  proc autoreg data=&dataset outest=pp_results_&var._lvl_t;
     model &var = time / stationarity=(pp=(trend=linear)) dwprob;
     output out=pp_diag_&var._lvl_t predicted=p residual=r;
     label &var = "&label (Levels, Trend Test)";
  run;
  ods output UnitRootTest=ur_&var._lvl_t;

  * Create First Difference *;
  data temp_diff;
    set &dataset;
    d_&var = dif(&var);
  run;

  * Test in First Differences (Constant) *;
  proc autoreg data=temp_diff outest=pp_results_&var._dif_c;
     model d_&var = / stationarity=(pp=(trend=zero)) dwprob;
     output out=pp_diag_&var._dif_c predicted=p residual=r;
     label d_&var = "&label (Differences, Constant Test)";
  run;
  ods output UnitRootTest=ur_&var._dif_c;

  * Test in First Differences (Constant + Trend) *;
  proc autoreg data=temp_diff outest=pp_results_&var._dif_t;
     model d_&var = time / stationarity=(pp=(trend=linear)) dwprob;
     output out=pp_diag_&var._dif_t predicted=p residual=r;
     label d_&var = "&label (Differences, Trend Test)";
  run;
  ods output UnitRootTest=ur_&var._dif_t;

  * Combine results *;
  data pp_summary_&var;
      set ur_&var._lvl_c(in=a) ur_&var._lvl_t(in=b) ur_&var._dif_c(in=c) ur_&var._dif_d(in=d);
       length TestType $30.;
       if a then TestType = 'Level, Constant';
       else if b then TestType = 'Level, Trend';
       else if c then TestType = 'Difference, Constant';
       else if d then TestType = 'Difference, Trend';
       Variable = "&var";
  run;

%mend run_pp_test;


* --- Run tests on aggregate variables (Levels and Differences) --- *;
* These correspond to Table 1, Panel A Stationarity Tests *;
%run_pp_test(var=log_p, dataset=aggregate_monthly, label=Log Aggregate Price);
%run_pp_test(var=log_b, dataset=aggregate_monthly, label=Log Aggregate Book Value);
%run_pp_test(var=log_d, dataset=aggregate_monthly, label=Log Aggregate Dividends);
%run_pp_test(var=log_vfx, dataset=aggregate_monthly, label=Log Aggregate Vf(x));

* --- Run tests on the log fundamental-to-price ratio (Cointegration Test) --- *;
* This corresponds to the main hypothesis test (implicit in Table 1 results) *;

* Full Period Test *;
%put NOTE: Running Cointegration tests for Log Vf(x)/P (Full Period: &start_year - &end_year);
proc autoreg data=aggregate_monthly;
   model log_vfx_p = / stationarity=(pp=(trend=zero)) dwprob; /* Eq 7 approx */
   ods output UnitRootTest=ur_vfxp_full_c;
   label log_vfx_p = "Log Vf(x)/P (Full, Constant Test)";
run;
proc autoreg data=aggregate_monthly;
   model log_vfx_p = time / stationarity=(pp=(trend=linear)) dwprob; /* Eq 8 approx */
   ods output UnitRootTest=ur_vfxp_full_t;
   label log_vfx_p = "Log Vf(x)/P (Full, Trend Test)";
run;

* Sub-Period Tests *;
proc sort data=aggregate_monthly;
    by period month_date;
run;

%put NOTE: Running Cointegration tests for Log Vf(x)/P (By Period);
proc autoreg data=aggregate_monthly;
   by period;
   model log_vfx_p = / stationarity=(pp=(trend=zero)) dwprob; /* Eq 9 approx - constant */
   ods output UnitRootTest=ur_vfxp_period_c;
   label log_vfx_p = "Log Vf(x)/P (By Period, Constant Test)";
run;

proc autoreg data=aggregate_monthly;
   by period;
   model log_vfx_p = time / stationarity=(pp=(trend=linear)) dwprob; /* Eq 9 approx - trend */
   * Need to reset time trend within each period *;
   * Create a within-period time trend *;
   data aggregate_monthly_t;
       set aggregate_monthly;
       by period;
       if first.period then time_period = 0;
       time_period + 1;
   run;
   proc autoreg data=aggregate_monthly_t;
      by period;
      model log_vfx_p = time_period / stationarity=(pp=(trend=linear)) dwprob;
      ods output UnitRootTest=ur_vfxp_period_t;
      label log_vfx_p = "Log Vf(x)/P (By Period, Trend Test)";
   run;

* --- Consolidate and Display Key Results --- *;
%put "*** Phillips-Perron Test Results ***";

options nonumber nodate;
title "Phillips-Perron Unit Root Tests for Aggregate Variables";
proc print data=pp_summary_log_p label noobs; run;
proc print data=pp_summary_log_b label noobs; run;
proc print data=pp_summary_log_d label noobs; run;
proc print data=pp_summary_log_vfx label noobs; run;
title;

title "Phillips-Perron Cointegration Tests for log(Vf(x)/P)";
title2 "Full Period (&start_year - &end_year)";
proc print data=ur_vfxp_full_c label noobs; var Test Type Rho Tau Pr__Rho Pr__Tau; where Type contains 'Zero'; run;
proc print data=ur_vfxp_full_t label noobs; var Test Type Rho Tau Pr__Rho Pr__Tau; where Type contains 'Linear'; run;
title2;

title "Phillips-Perron Cointegration Tests for log(Vf(x)/P) by Period";
proc print data=ur_vfxp_period_c label noobs; var period Test Type Rho Tau Pr__Rho Pr__Tau; where Type contains 'Zero'; run;
proc print data=ur_vfxp_period_t label noobs; var period Test Type Rho Tau Pr__Rho Pr__Tau; where Type contains 'Linear'; run;
title;

*----------------------------------------------------------------------------*;
* Step 9: Generate Descriptive Statistics (Similar to Table 1)             *;
*----------------------------------------------------------------------------*;
title "Descriptive Statistics - Aggregate Log Variables (Full Period)";
proc means data=aggregate_monthly mean stddev min max n;
  var log_p log_b log_d log_vfx;
run;
title;

title "Descriptive Statistics - Log Fundamental-to-Price Ratios (Full Period)";
proc means data=aggregate_monthly mean stddev min max n;
  var log_d_p log_b_p log_vfx_p /* log_vlx_p would require vl(x) calculation */;
run;
proc autoreg data=aggregate_monthly;
   model log_d_p; output out=temp_acorr p=p r=r; run;
proc means data=temp_acorr noprint; var r; output out=acorr_d_p(keep=rho1) lag1=rho1; run;
proc autoreg data=aggregate_monthly;
   model log_b_p; output out=temp_acorr p=p r=r; run;
proc means data=temp_acorr noprint; var r; output out=acorr_b_p(keep=rho1) lag1=rho1; run;
proc autoreg data=aggregate_monthly;
   model log_vfx_p; output out=temp_acorr p=p r=r; run;
proc means data=temp_acorr noprint; var r; output out=acorr_vfx_p(keep=rho1) lag1=rho1; run;
data desc_ratios_full;
   merge acorr_d_p acorr_b_p acorr_vfx_p;
   label rho1 = "Lag 1 Autocorrelation";
run;
proc print data=desc_ratios_full label; var rho1; run;
title;

title "Descriptive Statistics - Log Fundamental-to-Price Ratios by Period";
proc means data=aggregate_monthly mean stddev min max n;
  class period;
  var log_d_p log_b_p log_vfx_p;
run;
proc autoreg data=aggregate_monthly;
   by period;
   model log_d_p; output out=temp_acorr p=p r=r; run;
proc means data=temp_acorr noprint; by period; var r; output out=acorr_d_p_p(keep=period rho1) lag1=rho1; run;
proc autoreg data=aggregate_monthly;
   by period;
   model log_b_p; output out=temp_acorr p=p r=r; run;
proc means data=temp_acorr noprint; by period; var r; output out=acorr_b_p_p(keep=period rho1) lag1=rho1; run;
proc autoreg data=aggregate_monthly;
   by period;
   model log_vfx_p; output out=temp_acorr p=p r=r; run;
proc means data=temp_acorr noprint; by period; var r; output out=acorr_vfx_p_p(keep=period rho1) lag1=rho1; run;

data desc_ratios_period (rename=(rho1_d=rho1_d_p rho1_b=rho1_b_p rho1_vfx=rho1_vfx_p));
    merge acorr_d_p_p(rename=(rho1=rho1_d))
          acorr_b_p_p(rename=(rho1=rho1_b))
          acorr_vfx_p_p(rename=(rho1=rho1_vfx));
    by period;
    label rho1_d_p = "Lag 1 Autocorr (d/p)"
          rho1_b_p = "Lag 1 Autocorr (b/p)"
          rho1_vfx_p = "Lag 1 Autocorr (Vf(x)/p)";
run;
proc print data=desc_ratios_period label; by period; var rho:; run;
title;


*----------------------------------------------------------------------------*;
* Final Notes                                                                *;
*----------------------------------------------------------------------------*;
/*
MISSING DATA SOURCE IDENTIFIED:
===============================
The analysis requires monthly data for the 3-year Treasury constant-yield-to-maturity
bond rate for the period 1979-2008. This data is not standard in Compustat or CRSP
and must be obtained from an external source like FRED (e.g., series DGS3) or
a specialized financial database (e.g., WRDS Federal Reserve Banks data). The
current code uses a placeholder value, which will lead to incorrect results for
the Vf(x) calculation and subsequent cointegration tests. Ensure this data is
sourced and integrated into the 'treasury_yields' dataset before running for
accurate replication.

OTHER CONSIDERATIONS:
=====================
- The calculation of vl(x) based on Ohlson (1995) linear information dynamics
  (Eq 12-15) is not included here but involves estimating AR(1) parameters,
  typically by industry and year, which adds complexity.
- The paper mentions robustness checks (analyst forecasts, different r/g,
  rolling windows) which are not implemented in this core replication code.
- Exact handling of missing values, micro-cap firms, or specific delisting
  returns might slightly differ from the original paper if not fully specified.
- The calculation of the 'end_avail_date' for Compustat data assumes a standard
  12-month fiscal year. Adjustments might be needed for firms with non-standard
  fiscal periods if precision is critical.

INTERPRETING RESULTS:
====================
Compare the Z-Rho and Z-Tau statistics (and their p-values) from the PROC AUTOREG
output for the log_vfx_p variable against the Phillips-Perron critical values.
- Full Period: Assess overall cointegration.
- By Period: Compare statistics for 1979-1993 vs 1994-2008. The hypothesis predicts
  failure to reject the null of non-stationarity (unit root) in the recent period,
  while rejecting it (finding stationarity/cointegration) in the historical period.
  Look for Z-statistics closer to zero (less negative) in the recent period.
*/
