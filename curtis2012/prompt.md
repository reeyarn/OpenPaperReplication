<TASK>
give me the SAS code to replicate the @PAPER.
Refer to @COMPUSTAT for the accounting variables
and @CRSP for stock return data
</TASK>

<PAPER>

# A Fundamental-Analysis-Based Test for Speculative Prices

# Asher Curtis

The University of Utah

ABSTRACT: I investigate the possibility that recent price movements include significantly larger speculative components than those observed historically, where speculation is defined as the component of price that does not co-move with fundamentals. Specifically, at the aggregate level, price and accounting fundamentals co-move historically (1979–1993) but do not co-move recently (1994–2008). The lack of co-movement in recent periods is accompanied by a significant reduction in the positive association between ratios of accounting fundamentals-to-price with future market returns. Changes in measurement error in accounting fundamentals do not appear to cause the lack of co-movement in recent periods, and risk- and growth-based explanations are not supported by the data. The results of this study provide evidence of a structural change in the long-run association between price and accounting fundamentals.

Keywords: fundamental analysis; speculative markets; co-movement; forecasting.

Data Available: All data are available from the sources described in the text.

# I. INTRODUCTION

This study investigates the possibility that recent price movements include significantly larger speculative components than observed historically, defining speculation as the component of price that does not co-move with fundamental value (Harrison and Kreps

Editor's note: Accepted by Paul Zarowin.

Submitted: October 2008 Accepted: July 2011 Published Online: August 2011

This paper is based on Chapter 3 of my dissertation from The University of New South Wales, Sydney, Australia. I especially thank my supervisors Philip Brown and Neil Fargher for their suggestions and comments. I thank my three anonymous thesis examiners, two anonymous reviewers, and Paul Zarowin (editor) for their constructive comments. I also received helpful comments on earlier drafts of this work from Linda Bamber, Joe Comprix, Jeff Coulton, Patricia Dechow, Peter Easton, Gustavo Grullon, Philip Joos, Steven Kachelmeier (senior editor), Michael Kollo, Christian Lundblad, Russell Lundholm, Sarah McVay, James Myers, Ronan Powell, Scott Richardson, Jay Ritter, Richard Sloan, Peter Wells, James Weston, Julian Yeo, Stephen Zeff, and participants at the Melbourne University Capital Markets Symposium, Rice University, Macquarie University, University of Technology Sydney, University of Queensland, 2005 American Accounting Association Annual Meeting, and RFS-Indiana University conference on the ''Causes and Consequences of Recent Financial Markets Bubbles.'' I thank Marcus Burger for his excellent work as a research assistant on later drafts of this paper. I gratefully acknowledge financial support from the Accounting and Finance Association of Australia and New Zealand and the Faculty of Commerce and Economics at The University of New South Wales. All remaining errors are my own responsibility.

[1978).](#page-24-0) Recent periods labeled ''bubbles,'' ''crashes,'' and ''financial crises'' have re-ignited academic and policy debates about whether price can deviate from fundamental value for an extended period of time. This question is of interest to policymakers, as research in this area could suggest potential directions for pre-emptive actions aimed at deflating potential asset price bubbles [(Hunter et al. 2005).](#page-24-0) Central to this debate is the question of whether large shifts in prices are due to either shifts in fundamentals or departures of prices from fundamentals ([Brunnermeier 2001,](#page-23-0) 47). Measuring the time-series properties of price- and accounting-based measures of fundamental value is a crucial first step in understanding this important policy question. The results of this study contribute to this debate by documenting evidence of a structural change in the time-series association between prices and accounting fundamentals in recent time periods.

My study extends the work of [Lee et al. (1999),](#page-24-0) who provide evidence of co-movement between price and accounting fundamentals, using estimates from residual income models, over a period (1979–1996) that precedes the recent periods labeled ''bubbles,'' ''crashes,'' and ''financial crises.'' I examine whether their results continue to hold in recent periods. Following [Lee et al.](#page-24-0) [(1999),](#page-24-0) I construct monthly aggregate indices of price and accounting fundamentals and test for co-movement at the aggregate level.1 In contrast to [Lee et al. (1999)](#page-24-0) I do not find evidence of co-movement between price and fundamental value over the period 1979–2008; evidence of co-movement, however, is found in the earlier period ending in 1996 which overlaps with [Lee et al.](#page-24-0) [(1999).](#page-24-0) These results provide evidence that the way in which the market prices accounting fundamentals has structurally changed in more recent years.

I also document evidence of a structural change in the association between ratios of accounting fundamentals-to-price with future market returns documented by [Lee et al. (1999).](#page-24-0) Specifically, I find no evidence of a positive association between ratios of accounting fundamentals-to-price and future market returns in the 1994–2008 period, while in the 1979–1993 period the association is consistent with that in [Lee et al. (1999).](#page-24-0) This result presents evidence of a structural change in the time-series properties of price. Using a multivariate time-series approach, I find evidence that the lack of co-movement appears to be driven primarily by changes in the short-term time-series properties of price.

These results should be interpreted with the important caveat that financial statement analysis provides numerous methods for estimating the fundamental value of a stock based on accounting inputs ([Penman 2007).](#page-24-0) As my study focuses on identifying possible changes in the time-series relation between prices and accounting fundamentals in recent time periods, I use a residual income model that combines historical earnings and book-value information in my primary analysis. The residual income model can also accommodate forward-looking information from analysts' forecasts, as well as changes in expected risk and expected growth assumptions, which I investigate in a supplemental robustness analysis.

In the robustness analysis, I document that risk- and growth-based explanations for the lack of co-movement are not supported by the data, and that including analysts' forecasts in the residual income model does not explain the lack of co-movement in recent periods. I also provide evidence of the timing of the structural break in the co-movement between prices and accounting fundamentals using a rolling-windows estimation technique. Using this approach, I first document a lack of co-movement between prices and fundamentals in 1996. These results suggest that periods commonly labeled ''bubbles,'' ''crashes,'' and ''financial crises'' can potentially be identified as

<sup>1</sup> Co-movement can be formally tested using cointegration analysis, which is the statistical term that describes the long-run equilibrium tendency of two variables to be tied together ([Hamilton 1994).](#page-23-0) When examining nonstationary (i.e., not mean-reverting) variables, cointegration is an appropriate method; variance ratios, which have been used in prior research, are not appropriate as variance is undefined for nonstationary variables ([Kleidon 1986).](#page-24-0)

![](_page_1_Picture_7.jpeg)

periods for which prices and accounting fundamentals do not have a tendency to co-move at the aggregate level.2

My results have implications for the literature on market-based research that investigates the association between market prices (or returns) and accounting information at the aggregate level. Specifically, OLS-based estimates of the relation between aggregate time-series of price and accounting variables can include spurious components. Future research conducted at the aggregate level could investigate which factors influence the tendency of prices and accounting fundamentals to co-move, furthering the understanding of their lack of co-movement in recent periods. Future researchers could also investigate whether there is a lack of co-movement, or variation in the cross-section at the firm level, as a lack of co-movement at the aggregate level does not automatically imply a lack of co-movement at the firm level [(Gonzalo 1993).](#page-23-0) Finally, my results suggest that future research analyzing market prices and returns with accounting fundamentals should investigate the role of trends in the data to avoid incorrect inferences.

Section II develops my model and hypothesis. Section III presents the main tests, Section IV provides additional forecasting and multivariate analysis, and Section V presents robustness checks. Section VI concludes.

#### II. MODEL AND HYPOTHESIS

#### The Expected Long-Run Relation between Price and Measures of Fundamental Value

The tests I perform in this study are based on the market fundamentals hypothesis, which states that price reflects the present value of future dividends.3 Errors in prices arising from transaction costs, trading frictions, and mispricing prevent market efficiency from holding exactly at every possible date [(Garman and Ohlson 1981;](#page-23-0) [Lee et al. 1999).](#page-24-0) A generalization of the fundamentals hypothesis, allowing for frictions and temporary mispricing, states that prices should co-move with their fundamental values ([Campbell and Shiller 1988;](#page-23-0) [Lee et al. 1999;](#page-24-0) [Ritter and Warr 2002).](#page-25-0) The formal test for co-movement, cointegration analysis, is appropriate in this case, as (1) accounting metrics do not incorporate all value-relevant information immediately [(Collins et al. 1994;](#page-23-0) [Weiss et](#page-25-0) [al. 2008),](#page-25-0) (2) if the market misprices accounting information, then the correction of this mispricing is not expected to be immediate due to frictions or limits to arbitrage ([Ou and Penman 1989;](#page-24-0) [Sloan](#page-25-0) [1996;](#page-25-0) [Maines and Hand 1996;](#page-24-0) [Shleifer and Vishny 1997; Rangan and Sloan 1998),](#page-25-0) and (3) there are strong theoretical links between current accounting measures and the present value of future cash-flows ([Ohlson 1995; Penman 2007).](#page-24-0)

To formulate the expected association between price and fundamental values, I begin with the assumption that the ''true'' fundamental value, typically referred to as intrinsic value, is unobservable and equal to the present value of all future dividends:

<sup>2</sup> As my sample is aggregated, my results are not heavily affected by the increase in the number of smaller firms over time, which suggests that even large established firms' prices can deviate from their fundamentals for an extended period. In contrast, much of the debate regarding the existence of significant speculation in market prices has been limited to the examination of Internet stocks that were listed on the NASDAQ during the late 1990s. For example, using data from the late 1990s, [Ofek and Richardson (2002, 2003)](#page-24-0) and [Demers and Lev](#page-23-0) [(2001)](#page-23-0) highlight the ''implausibly high'' growth rates needed to justify the prices of Internet stocks. [Bartov et al.](#page-23-0) [(2002)](#page-23-0) show an association between Internet stock prices and nontraditional measures of potential value, and [Cooper et al. (2001)](#page-23-0) show that firms that changed their names to include ''.com'' earned abnormal market returns. Finally, [Pastor and Veronesi (2006)](#page-24-0) argue that the ''bubble- and crash-like'' appearance of stock prices was due

to the resolution of previously uncertain growth expectations for Internet firms. 3 See, for example, [LeRoy and Porter (1981),](#page-24-0) [Blanchard and Watson (1982),](#page-23-0) [Summers (1986),](#page-25-0) and [Shiller (1989).](#page-25-0)

$$V_t^* = \sum_{\tau=1}^n E_t(R_t^{-\tau} D_{t+\tau}),\tag{1}$$

where V- t is the unobservable intrinsic value of the stock assumed to be a random walk ([Samuelson](#page-25-0) [1965),](#page-25-0) and Rs t is 1 plus the discount rate, which is time-varying and assumed to be greater than zero ([Campbell and Shiller 1988).](#page-23-0) Dtþs equals the real dividend paid to the owner of the stock between t1 and t, and Et denotes expectations conditional on information available at time t.

Following [Lee et al. (1999),](#page-24-0) I consider price to be an estimate of intrinsic value with error. In log form, the expected relation between log price (pt) and (unobservable) log intrinsic value ðv- t Þ is:

$$p_t = \gamma_1 \mathbf{v}_t^* + \mathbf{u}_{1t}^*,\tag{2}$$

where pt ¼ log (Pt), v- t ¼ logðV- t Þ, and u- 1t is unobservable mispricing error.

Fundamental analysis uses accounting fundamentals like earnings and book-values to estimate fundamental value, with numerous estimation techniques available, such as the residual income model ([Ohlson 1990, 1995).](#page-24-0) The measurement of fundamental value using accounting inputs or forecasts of accounting inputs provides a second measure of intrinsic value with error:

$$f_t = \gamma_2 \mathbf{v}_t^* + \mathbf{u}_{2t}^*,\tag{3}$$

where ft ¼ log(Ft), Ft is an estimate of fundamental value using accounting fundamentals to approximate the unobservable intrinsic value in Equation (1), and u- 2t is unobservable measurement error.

In Equations (2) and (3), both price and accounting fundamentals are measures of intrinsic value with error, and they share the unobservable intrinsic value as a common trend. The timeseries relation between accounting fundamentals and price can be written by substituting the unobservable intrinsic value for price in Equation (3), yielding:

$$f_t = \beta p_t + \varepsilon_t,\tag{4}$$

where b [ c2c1 1 and et [ u- 2t c2c1 1 u- 1t : Equation (4) states a general representation of the market fundamentals hypothesis and has the following unique property: if et is a stationary process, then b characterizes the long-run or ''equilibrium'' relation between price and fundamental value.

If b does characterize the equilibrium relation between price and fundamental value, then if ft , bpt, then the expectation is that, over time, either accounting fundamentals will increase or price will decrease to restore equilibrium; the converse is also true if ft . bpt. This process of either price or accounting fundamentals correcting toward the equilibrium relation implies that the error term in Equation (4), et, is expected to mean-revert over time, which can be written as:

$$a_l = \rho a_{l-1} + e_l,\text{ for } |\rho| \le 1,\tag{5}$$

where et is a mean zero random variable. As the time-series mean of et does not theoretically equal zero, the times-series could potentially include a permanent difference between the levels of price and accounting fundamentals. Including a constant, a0, in the model allows for tests of stationarity with a permanent difference between the two variables (i.e., et oscillates around a constant level). It is also possible that there is a stable increasing difference between price and accounting fundamentals, and including a time-trend, dt, in the model allows for tests of stationarity around an increasing difference over time (i.e., et oscillates around a constant time-trend). For example, unrecognized intangible assets could lead to both permanent and increasing differences between prices and accounting fundamentals. Adding a constant and a time trend to the model yields:

![](_page_3_Picture_15.jpeg)

$$
\varepsilon_t = a_0 + \delta t + \rho \varepsilon_{t-1} + e_t,\tag{6}
$$

where a0 is a non-zero constant and dt is the time-trend.

### The Expected Properties of the Log Fundamental-Value-to-Price Ratio

[Lee et al. (1999)](#page-24-0) provide evidence that ratios of accounting fundamentals-to-price are stationary around an intercept and stationary around an intercept and time-trend, using the residual income model. Evidence of stationarity in fundamental-to-price ratios indicates that accounting fundamentals and price are cointegrated. Equations (4) and (6) can be reconciled to [Lee et al.](#page-24-0) [(1999)](#page-24-0) by setting b ¼ 1, as the assumption that b ¼ 1 allows Equation (4) to be represented as the log fundamental-to-price ratio; i.e., ft/pt ¼ et. 4 As the measurement errors in price and accounting fundamentals may require more than one month to correct, the errors from Equation (6) are likely to be serially correlated. The model is therefore estimated in changes. Thus, the following regression models, which include a constant and time-trend, test whether the times-series is stationary (see Appendix A for further details):

$$
\Delta \varepsilon_t = a_0 + (\rho - 1)\varepsilon_{t-1} + e_t,\text{ and}\tag{7}
$$

$$
\Delta \varepsilon_t = a_0 + \delta t + (\rho - 1)\varepsilon_{t-1} + e_t,\tag{8}
$$

where Equation (7) includes a constant and Equation (8) includes both a constant and a time-trend. The null in both regressions is that the variable et has a unit root (i.e., it is nonstationary) when q ¼ 1. If q 1, then there is evidence that accounting fundamentals and price are not cointegrated.5 Alternatively, q , 1 would indicate evidence of cointegration between accounting fundamentals and price, as the changes in errors, on average, are reducing the prior level of the disparity (as (q 1 , 0) in this case). Evidence of cointegration is important as it implies that deviations between prices and fundamentals decay relatively quickly, suggesting prices and accounting fundamentals both reflect intrinsic value in a timely manner. I report two formal test statistics: an adjusted regression coefficient labeled Z-Rho, which is calculated by adjusting the estimate of T*(q 1), where T is number of time-series observations used in the estimation, and Z-Tau, which is an adjusted t-statistic related to the (q 1) coefficient estimate.6 If q , 1, then both Z-Rho and Z-Tau will be negative, and, in general, are more negative for lower estimates of q where lower values of q imply less persistent, or faster decaying, errors. These statistics follow the distribution provided in [Phillips and Perron (1988).](#page-24-0)

#### Stability of the Relation between Price and Value

The primary objective of this study is to investigate whether price and accounting fundamentals remain co-integrated in recent periods labeled ''bubbles,'' ''crashes,'' and ''financial crises.'' A lack of co-integration suggests that speculation is not removed from prices in a timely manner, where speculation is defined as a component of price that does not co-move with fundamental value ([Harrison and Kreps 1978).](#page-24-0) Speculation cannot be directly observed; however, an increase in the time that speculation takes to decay in recent periods has implications for the tendency of accounting

<sup>4</sup> As both price and accounting fundamentals are in logs, the ratio of logs is equivalent to differences in logs. 5 If q . 1, then the time-series is nonstationary and is considered ''explosive'' in nature. 6 The adjustments to these statistics are functions of T, the determinants of the cross-product matrix and the

difference in the squared sum less the squared errors of the model [(Maddala and Kim 2002,](#page-24-0) 80–81). As the statistics depend on T, it is possible that more frequently observed fundamentals data, or a longer time span of data sampled less frequently may increase the power of finding cointegration. I examine the first explanation in my robustness analysis and leave the second possibility for future research.

fundamentals and price to co-move. Specifically, co-movement relies on the speed at which measurement errors in accounting fundamentals and price decay.7 A testable prediction is that there is a change in recent periods in the stationarity of ratios of accounting fundamentals-to-prices:

## Hypothesis: The time-series dynamics of ratios of accounting fundamentals-to-price change from being stationary historically to being nonstationary in recent periods.

To test my hypothesis, I begin by defining a ''recent'' period and a ''historical'' period, which I split into the first half (1979–1993) and second half (1994–2008) of the available times-series to increase the power of the test.8 The first period ends prior to the IPO of Netscape, and the second period includes the ''bubble'' of the late 1990s, the ''crash'' of 2001, and recent ''financial crisis'' periods. To test the hypothesis, I estimate Equations (7) and (8) across the two time periods. For example, for Equation (8):

$$\Delta \varepsilon_{t} = \begin{cases} a_{0} + \delta t_{0} + (\rho_{0} - 1)\varepsilon_{t-1} + e_{t}, t = 1, \dots, T, \\ a_{1} + \delta t_{1} + (\rho_{1} - 1)\varepsilon_{t-1} + e_{t}, t = T + 1, \dots, T + m, \end{cases} \tag{9}$$

where q0 is estimated from the first T observations and q1 is estimated from the last m observations. The log fundamental-to-price ratio, et, is stationary when the estimate of q , 1; conversely, the log fundamental-to-price ratio is nonstationary when the estimate of q 1. There are four possible outcomes when comparing historical and recent periods. Specifically, the fundamental-to-price ratio (1) is nonstationary in both periods (q0 1, q1 1), (2) is stationary in both periods (q0 , 1, q1 , 1), (3) is nonstationary in the historical period and stationary in the recent period (q0 1, q1 , 1), or (4) is stationary in the historical period and nonstationary in the recent period (q0 , 1, q1 1). Only case (4) provides evidence in support of the hypothesis.

## III. EMPIRICAL ANALYSIS

## Data Sources and Sample Selection

I include all firms in the sample covered by both CRSP and Compustat over the period 1979– 2008; I do not require that firms have available data for the entire period, and I exclude observations for which the book-value of equity is negative.9 Observations where residual income is negative (where earnings are less than the discount rate times book-value) are retained, but with the residual income model estimate set equal to book-value.10 I collect financial data required for measures of fundamentals from the Compustat database (annual book-values, earnings, and dividends), and

coverage in my robustness analyses. 10 Due to the increasing frequency of loss firms over the estimation period, I do not exclude these firms from the analysis. The choice to replace negative residual income with book-value rules out the estimation of implausible negative value estimates. This approach also implicitly assumes that losses are transitory and that the firm is valued at its adaption value ([Burgstahler and Dichev 1997).](#page-23-0) Results are not sensitive to the exclusion of loss firms.

![](_page_5_Picture_13.jpeg)

<sup>7</sup> Both larger and smaller levels of speculation may cause a lack of co-movement if they tend not to decay quickly

during the sample period. 8 [Lee et al. (1999)](#page-24-0) provide evidence of cointegration for a time-series ending in June 1996. While a split in the middle of my time-series may appear arbitrary, testing for cointegration using short time spans arguably biases toward finding no cointegration due to the decreased power of the test. [Podivinsky (1998)](#page-24-0) suggests that the critical values for cointegration tests may be inappropriate for sample sizes of less than 100 observations. I split the sample equally, from 1979 to 1993 and from 1994 to 2008, yielding 180 observations in each sample period, so that the power of the test is not a concern in these comparisons. I consider alternative splits of the time-series in my robustness analysis. 9 I obtain similar results when limiting the sample to firms that have available data in the Dow 30, the S&P 500,

the top 1000 or top 50 by market capitalization. I investigate the restriction of the sample to firms with analyst

monthly market-value of equity data using month-end share price and shares outstanding on CRSP. I source interest rate data from the Treasury constant-yield-to-maturity bond series. Following [Lee](#page-24-0) [et al. (1999)](#page-24-0) I use the same publicly available financial information over multiple months in the construction of monthly accounting fundamental estimates. For example, I retain book-value in monthly observations from four months after the financial year-end, until three months after the subsequent financial year-end when it is updated.11 I aggregate all firm-level observations of accounting fundamentals and market values at the end of the month to construct the monthly timesseries.12

#### Measurement of Fundamental Value

I measure accounting fundamentals as historical dividends, d (Compustat DVC), and historical book-values, b (Compustat CEQ), and complement them with valuations estimated from the residual income model. Firms that do not pay dividends are retained in the aggregate dividend measure and corresponding aggregate price measure. Following prior research, I implement the residual income model using two main approaches, the forecast approach and the linear information dynamic approach. The forecast approach uses the structure of the residual income model to incorporate explicit estimates of future dividends (e.g., [Frankel and Lee 1998;](#page-23-0) [Lee et al. 1999).](#page-24-0) Using the clean surplus relation, the forecast-based residual income model (vf) can be implemented using the following structural form with T-period-ahead observations of earnings forecasts:

$$\text{wf}(T)_t = b_t + \frac{f(1)_t - r \cdot b_t}{(1+r)} + \frac{f(2)_t - r \cdot b(1)_t}{(1+r)^2} + \dots + \frac{f(T)_t - r \cdot b(T-1)_t}{(1+r)^{T-1}r},\tag{10}$$

where bt is the book-value of equity, and f(.) is the forecast of earnings for periods f1, 2, ... , Tg, r is the equity cost of capital. The model can then be collapsed to provide a one-period estimate of fundamental value similar to the Gordon growth model by using a single forecast of earnings and assuming a perpetual growth rate g. Specifically:

$$\text{wf}(\mathbf{x})_t = b_t + \frac{f(1)_t - r \cdot b_t}{r - \mathbf{g}}.\tag{11}$$

This very simple structure can be used to calibrate multiple measures of value, based on changing f(1), r, and g. 13 In implementing this model, I assume that r equals the three-year Treasury constant-yield-to-maturity treasury bond rate plus an equity premium of 6 percent, and that g is set equal to 3 percent. Book-value, bt, is the end of year book-value from the most recent fiscal yearend (Compustat CEQ), and f(1) is the one-year forecast of earnings. To proxy for f(1), I use the most recent historically available annual earnings as the forecast of earnings (Compustat IB), which assumes a random walk in annual earnings.

The second approach is to consider the linear information dynamics suggested by [Ohlson](#page-24-0) [(1995)](#page-24-0) to combine the information in earnings and book-value [(Dechow et al. 1999;](#page-23-0) [Myers 1999):](#page-24-0)

$$\text{vol}(\mathbf{x})_t = b_t + \mathbf{z}_1 \mathbf{x}_t^a + \mathbf{z}_2 \mathbf{u}_t,\tag{12}$$

![](_page_6_Picture_15.jpeg)

<sup>11</sup> In untabulated results, the main results are not sensitive to the use of quarterly book-values, dividends, and earnings. 12 In untabulated results, I find that the main results are consistent when measuring the time-series using either

quarterly or annual frequencies rather than monthly. The conclusion drawn from the relevant econometrics literature is that for a given time span, it is preferable to use higher frequency data when it is available ([Maddala](#page-24-0)

[and Kim 2002,](#page-24-0) 229). Thus, I follow [Lee et al. (1999)](#page-24-0) and focus on monthly frequencies. 13 I consider the impact of changes to assumptions regarding r, g, and f(1) in a subsequent robustness analysis.

where a1 ¼ x ð1þrxÞ ; a2¼ð1þrÞ ð1þrxÞð1þrcÞ , xa t ¼ nit r bt1; where nit is annual net income ending at time t, and tt is other information (Ohlson 1995). Equation (12) is based on the following assumed linear information dynamics:

$$
\alpha_{t+1}^a = a\alpha_t^a + \mathbf{v}_t + \mathbf{e}_{1,t+1},
\tag{13}
$$

$$
\eta_{t+1} = \gamma \eta_t + e_{2,t+1}.\tag{14}
$$

When other information (tt) is assumed to equal 0, and 0 , x , 1, the model comprises a convex combination of book-value and residual income:

$$\text{vol}(\mathbf{x})_t = b_t + \frac{\alpha \mu_t^a}{(1 + r_t - \alpha \iota_t)},\tag{15}$$

where x and c are constants. Following [Dechow et al. (1999),](#page-23-0) I estimate these terms using a oneperiod lagged AR(1) model, using the prior year's data for each industry.

### Descriptive Statistics

Table 1 presents summary statistics for the sample period. Panel A presents descriptive statistics for the market portfolio price and fundamentals. The log of price, p, is on average 15.76, with a standard deviation of 0.75; the log of the one-period-ahead perpetuity of residual income, vf(x), has a mean of 15.35 and a standard deviation of 0.69. I also provide stationarity tests for all of the variables in Panel A, finding that all variables are nonstationary in levels and stationary in first differences (i.e., I(1) processes).

Table 1, Panel B presents descriptive statistics of the log fundamental-to-price ratios. The log ratio of vf(x)/p has a mean of 0.41, suggesting that aggregate value is, on average, 66.4 percent of aggregate price. Panel B documents that all of the first-order autocorrelations for the fundamentalto-price ratios are high, suggesting they are either nonstationary or slowly mean-reverting.14 The first-order autocorrelation coefficient reported in Panel B for vf(x)/p is 0.948, which is higher than the 0.93 reported by [Lee et al. (1999)](#page-24-0) for a similar model. Panel C reports descriptive statistics of the log fundamental-to-price ratios split into two equal subperiods, 1979–1993 and 1994–2008. There is some evidence that is consistent with larger deviations of price from accounting fundamentals in the 1994–2008 period, with many of the standard deviations and first-order autocorrelations of the ratios increasing. This evidence, however, is inconclusive because if the ratios are nonstationary, then the standard deviations are not interpretable ([Kleidon 1986).](#page-24-0) Since the first-order autocorrelation is close to 1, and there is possible evidence of differences in the fundamental-to-price ratios across the two periods, formal statistical tests are required to determine if vf(x)/p is stationary in recent periods.

Figure 1 presents the time-series variation of ratios of aggregate price-to-fundamentals for bookvalue and Vf(x). From 1979 to the end of the [Lee et al. (1999)](#page-24-0) time period (June 1996), the fundamental-to-price ratios fluctuate regularly within a tight band, suggesting mean-reversion. As in [Lee et al. (1999),](#page-24-0) the crash of 1987 is apparent in the ratios. Following the [Lee et al. (1999)](#page-24-0) time period, I find that all ratios are much more volatile and appear to support the observations of a ''bubble,'' a ''crash,'' and a ''financial crisis.'' Specifically, the extent to which the ratios increase from June 1996 until March 2000 is unprecedented in this times-series, as is the steepness of the declines in the price-to-fundamentals ratios beginning in April 2001. At the end of the times-series in late 2008,

<sup>14</sup> To some extent the high autocorrelations of the book-to-price and dividend-to-price ratios could be driven by the retention of annual accounting variables for 12 periods.

![](_page_7_Picture_13.jpeg)

# TABLE 1 Summary Statistics

# Panel A: Descriptive Statistics for the Aggregate Market Portfolio (T ¼ 360)

|          |       |           |       |       | Stationarity Tests of Logged Variables |            |            |            |  |  |
|----------|-------|-----------|-------|-------|----------------------------------------|------------|------------|------------|--|--|
|          |       |           |       |       | In Levels                              |            | In Changes |            |  |  |
| Variable | Mean  | Std. Dev. | Min.  | Max.  | Z-Rho (Zq)                             | Z-Tau (Zs) | Z-Rho (Zq) | Z-Tau (Zs) |  |  |
| p        | 15.76 | 0.75      | 14.45 | 16.82 | 1.8                                    | 1.1        | 317.4*     | 17.1*      |  |  |
| b        | 14.96 | 0.44      | 14.37 | 15.83 | 0.1                                    | 0.1        | 347.0*     | 18.4*      |  |  |
| d        | 12.02 | 0.37      | 11.44 | 12.77 | 0.9                                    | 0.8        | 365.5*     | 20.3*      |  |  |
| vf(x)    | 15.35 | 0.69      | 14.39 | 16.89 | 1.5                                    | 1.0        | 296.6*     | 15.6*      |  |  |
| vl(x)    | 15.01 | 0.47      | 14.37 | 15.91 | 1.2                                    | 1.2        | 366.5*     | 20.3*      |  |  |

## Panel B: Descriptive Statistics of Fundamental-to-Price Ratios (T ¼ 360)

| Variable |       | Std. Dev. | Min.  | Max.  | Autocorrelation at Lag |       |       |       |       |       |
|----------|-------|-----------|-------|-------|------------------------|-------|-------|-------|-------|-------|
|          | Mean  |           |       |       | 1                      | 12    | 24    | 36    | 48    | 60    |
| d/p      | –3.74 | 0.43      | –4.55 | –2.85 | 0.989                  | 0.888 | 0.805 | 0.694 | 0.564 | 0.467 |
| b/p      | –0.79 | 0.37      | –1.54 | 0.00  | 0.983                  | 0.851 | 0.719 | 0.601 | 0.466 | 0.394 |
| vf(x)/p  | –0.41 | 0.26      | –1.10 | 0.68  | 0.948                  | 0.592 | 0.384 | 0.225 | 0.118 | 0.091 |
| vl(x)/p  | –0.75 | 0.35      | –1.48 | 0.00  | 0.949                  | 0.566 | 0.363 | 0.165 | 0.044 | 0.001 |

| Panel C: Descriptive Statistics for Fundamental-to-Price Ratios by Period |
|---------------------------------------------------------------------------|
|---------------------------------------------------------------------------|

|          |      |                                                             |      |      |       | Autocorrelation at Lag |       |       |       |       |  |
|----------|------|-------------------------------------------------------------|------|------|-------|------------------------|-------|-------|-------|-------|--|
| Variable | Mean | Std. Dev.                                                   | Min. | Max. | 1     | 12                     | 24    | 36    | 48    | 60    |  |
|          |      | (1) Historical period (January 1979–December 1993, T ¼ 180) |      |      |       |                        |       |       |       |       |  |
| d/p      | 3.37 | 0.23                                                        | 3.80 | 2.85 | 0.944 | 0.536                  | 0.287 | 0.059 | 0.260 | 0.375 |  |
| b/p      | 0.50 | 0.24                                                        | 0.93 | 0.00 | 0.928 | 0.607                  | 0.316 | 0.084 | 0.131 | 0.246 |  |
| vf(x)/p  | 0.33 | 0.14                                                        | 0.68 | 0.02 | 0.938 | 0.534                  | 0.260 | 0.077 | 0.002 | 0.007 |  |
| vl(x)/p  | 0.48 | 0.23                                                        | 0.87 | 0.00 | 0.949 | 0.572                  | 0.316 | 0.092 | 0.016 | 0.059 |  |
|          |      | (2) Recent period (January 1994–December 2008, T ¼ 180)     |      |      |       |                        |       |       |       |       |  |
| d/p      | 4.10 | 0.23                                                        | 4.55 | 3.50 | 0.964 | 0.619                  | 0.450 | 0.285 | 0.130 | 0.031 |  |
| b/p      | 1.09 | 0.21                                                        | 1.54 | 0.46 | 0.972 | 0.685                  | 0.433 | 0.263 | 0.122 | 0.072 |  |
| vf(x)/p  | 0.50 | 0.31                                                        | 1.10 | 0.68 | 0.934 | 0.466                  | 0.421 | 0.313 | 0.143 | 0.001 |  |
| vl(x)/p  | 1.01 | 0.21                                                        | 1.48 | 0.34 | 0.923 | 0.380                  | 0.412 | 0.290 | 0.134 | 0.020 |  |

* p , 0.05.

The Accounting Review

January 2012

Panel A reports the log of the aggregate price (p), dividends (d), book-values (b), and logged accounting-based value estimates where vf(x) is the one-period forecast-based residual income model and vl(x) is the residual income model based on the linear information dynamics of [Ohlson (1995).](#page-24-0) Panels B and C report ratios of the aggregate value estimate divided by the aggregate price in logs. The stationarity estimates are performed using the Phillips-Perron estimates with a constant and one lag, Equation (7) in the text. All variables are aggregated on a monthly basis using available data. T is the number of time-series observations.

![](_page_8_Picture_11.jpeg)

FIGURE 1 The Time-Series of the Ratio of Price-to-Value

![](_page_9_Figure_2.jpeg)

This graph displays ratios of price-to-book-value and estimates of the residual income model. Aggregate (P) is divided by either (1) aggregate book-value (B) or (2) aggregate accounting fundamentals using Vf(x), which is measured using the sum of book-value and a perpetuity of one-period-ahead residual income using historical earnings growing at 3 percent, discounted using the three-year Treasury constant-yield-to-maturity bond rate plus a 6 percent equity premium, and book-value is measured as total common equity. These ratios are constructed as aggregate indices and represent the sum of all firms with sufficient data during the period 1979 to 2008.

the financial crisis is evident in the data, which shows a sharp decline in all of the price-tofundamentals ratios. The larger oscillations in recent periods provide preliminary evidence consistent with a change in the time-series relation between accounting fundamentals and price. Formal analysis of stationarity for each ratio is important, as it tests whether there is statistical evidence of comovement between accounting fundamentals and price (e.g., [Engle and Granger 1987).](#page-23-0)

Figure 2 graphs the times-series of aggregate price, P, and accounting fundamentals using Vf(x) separately, to provide additional insight into possible changes in the properties of the price and accounting fundamentals in recent periods. Prior to 1995, both times-series drift upward at approximately the same rate. The ''bubble period'' is clearly evident in the data where P diverges from Vf(x) in the late 1990s. The ''crash'' of 2001 precedes a short period in the mid-2000s where P and Vf(x) appear to be closely aligned, similar to the historical relation. The ''financial crisis'' is evident in the substantial declines in P at the end of the sample period, and the large effect of low

![](_page_9_Picture_6.jpeg)

![](_page_10_Figure_1.jpeg)

FIGURE 2 The Time-Series of Price and Value

This graph displays the time-series of aggregate market value (P) and aggregate accounting fundamentals using Vf(x), which is measured using the sum of book-value and a perpetuity of one-period-ahead residual income using historical earnings growing at 3 percent, discounted using the three-year Treasury constant-yield-tomaturity bond rate plus a 6 percent equity premium. Each index is constructed as an aggregate index reported in millions of U.S. dollars and representing the sum of all firms with sufficient data during the period 1979 to 2008.

interest rates on the Vf(x) model.15 Importantly, over the entire period represented in the figure, there is a strong upward trend in both the P and Vf(x) measures. Because there is evidence of similar upward trends in nonstationary variables, multivariate cointegration analysis is especially important, as it provides a test of whether a relation between two variables exists due to a common trend, which in this case is whether prices and accounting fundamentals share the trend of intrinsic value (e.g., [Stock and Watson 1988).](#page-25-0)

![](_page_10_Picture_9.jpeg)

<sup>15</sup> Vf(x) appears to be substantially above P in December 2008, but it is the relation between the time-series changes of the individual variables that are important, not their relative levels, which can be modified by changing the equity premium. For example, in results not tabulated here, price and value appear to be approximately equal to 1 for the constant 12 percent discount rate model in December 2008.
</PAPER>


<DATA Structure>
<COMPUSTAT>
The SAS System

The CONTENTS Procedure

Data Set Name	COMP.FUNDA	Observations	902022
Member Type	DATA	Variables	948
Engine	V9	Indexes	0
Created	11/07/2024 08:39:38	Observation Length	7592
Last Modified	11/07/2024 08:40:00	Deleted Observations	0
Protection	 	Compressed	NO
Data Set Type	 	Sorted	YES
Label	Merged Fundamental Annual File	 	 
Data Representation	SOLARIS_X86_64, LINUX_X86_64, ALPHA_TRU64, LINUX_IA64	 	 
Encoding	utf-8 Unicode (UTF-8)	 	 
Engine/Host Dependent Information
Data Set Page Size	131072
Number of Data Set Pages	53063
First Data Page	2
Max Obs per Page	17
Obs in First Data Page	14
Number of Data Set Repairs	0
Filename	/wrds/comp/20241107/d_na/funda.sas7bdat
Release Created	9.0401M7
Host Created	Linux
Inode Number	66585306
Access Permission	rw-------
Owner Name	u1704may
File Size	6GB
File Size (bytes)	6955204608
Alphabetic List of Variables and Attributes
#	Variable	Type	Len	Format	Informat	Label
37	acchg	Num	8	F19.4	20.4	Accounting Changes - Cumulative Effect
38	acco	Num	8	F19.4	20.4	Acceptances Outstanding
39	accrt	Num	8	20.4	20.4	ARO Accretion Expense
11	acctchg	Char	8	$8.	$8.	Adoption of Accounting Changes
12	acctstd	Char	8	$8.	$8.	Accounting Standard
40	acdo	Num	8	F19.4	20.4	Current Assets of Discontinued Operations
41	aco	Num	8	F19.4	20.4	Current Assets - Other - Total
42	acodo	Num	8	F19.4	20.4	Other Current Assets Excl Discontinued Operations
43	acominc	Num	8	F19.4	20.4	Accumulated Other Comprehensive Income (Loss)
44	acox	Num	8	F19.4	20.4	Current Assets - Other - Sundry
45	acoxar	Num	8	F19.4	20.4	Current Assets - Other - Total As Reported
46	acqao	Num	8	F19.4	20.4	Acquired Assets > Other Long-Term Assets
47	acqcshi	Num	8	F19.4	20.4	Shares Issued for Acquisition
48	acqgdwl	Num	8	F19.4	20.4	Acquired Assets - Goodwill
49	acqic	Num	8	F19.4	20.4	Acquisitions - Current Income Contribution
50	acqintan	Num	8	F19.4	20.4	Acquired Assets - Intangibles
51	acqinvt	Num	8	F19.4	20.4	Acquired Assets - Inventory
52	acqlntal	Num	8	F19.4	20.4	Acquired Loans
13	acqmeth	Char	2	$2.	$2.	Acquisition Method
53	acqniintc	Num	8	F19.4	20.4	Net Interest Income Contribution
54	acqppe	Num	8	F19.4	20.4	Acquired Assets > Property, Plant & Equipment
55	acqsc	Num	8	F19.4	20.4	Acquisitions - Current Sales Contribution
56	act	Num	8	F19.4	20.4	Current Assets - Total
934	adjex_c	Num	8	F25.12	26.12	Cumulative Adjustment Factor by Ex-Date - Calendar
942	adjex_f	Num	8	F25.12	26.12	Cumulative Adjustment Factor by Ex-Date - Fiscal
57	adpac	Num	8	F19.4	20.4	Amortization of Deferred Policy Acquisition Costs
14	adrr	Num	8	F19.4	20.4	ADR Ratio
58	aedi	Num	8	F19.4	20.4	Accrued Expenses and Deferred Income
59	afudcc	Num	8	F19.4	20.4	Allowance for Funds Used During Construction (Cash Flow)
60	afudci	Num	8	F19.4	20.4	Allowance for Funds Used During Construction (Investing) (Cash Flow)
15	ajex	Num	8	F25.12	26.12	Adjustment Factor (Company) - Cumulative by Ex-Date
16	ajp	Num	8	F25.12	26.12	Adjustment Factor (Company) - Cumulative byPay-Date
61	aldo	Num	8	F19.4	20.4	Long-term Assets of Discontinued Operations
62	am	Num	8	F19.4	20.4	Amortization of Intangibles
63	amc	Num	8	F19.4	20.4	Amortization (Cash Flow) - Utility
64	amdc	Num	8	F19.4	20.4	Amortization of Deferred Charges
65	amgw	Num	8	F19.4	20.4	Amortization of Goodwill
66	ano	Num	8	F19.4	20.4	Assets Netting & Other Adjustments
67	ao	Num	8	F19.4	20.4	Assets - Other
68	aocidergl	Num	8	F19.4	20.4	Accum Other Comp Inc - Derivatives Unrealized Gain/Loss
69	aociother	Num	8	F19.4	20.4	Accum Other Comp Inc - Other Adjustments
70	aocipen	Num	8	F19.4	20.4	Accum Other Comp Inc - Min Pension Liab Adj
71	aocisecgl	Num	8	F19.4	20.4	Accum Other Comp Inc - Unreal G/L Ret Int in Sec Assets
72	aodo	Num	8	F19.4	20.4	Other Assets excluding Discontinued Operations
73	aol2	Num	8	F19.4	20.4	Assets Level2 (Observable)
74	aoloch	Num	8	F19.4	20.4	Assets and Liabilities - Other - Net Change
75	aox	Num	8	F19.4	20.4	Assets - Other - Sundry
76	ap	Num	8	F19.4	20.4	Accounts Payable - Trade
77	apalch	Num	8	F19.4	20.4	Accounts Payable and Accrued Liabilities - Increase/(Decrease)
78	apb	Num	8	F19.4	20.4	Accounts Payable/Creditors - Brokers, Dealers, and Clearing Organizations
79	apc	Num	8	F19.4	20.4	Accounts Payable/Creditors - Customer
34	apdedate	Num	8	YYMMDDN8.	 	Actual Period End date
80	apofs	Num	8	F19.4	20.4	Accounts Payable/Creditors - Other - FS
81	aqa	Num	8	F19.4	20.4	Acquisition/Merger After-tax
82	aqc	Num	8	F19.4	20.4	Acquisitions
83	aqd	Num	8	F19.4	20.4	Acquisition/Merger Diluted EPS Effect
84	aqeps	Num	8	F19.4	20.4	Acquisition/Merger Basic EPS Effect
85	aqi	Num	8	F19.4	20.4	Acquisitions - Income Contribution
86	aqp	Num	8	F19.4	20.4	Acquisition/Merger Pretax
87	aqpl1	Num	8	F19.4	20.4	Assets Level1 (Quoted Prices)
88	aqs	Num	8	F19.4	20.4	Acquisitions - Sales Contribution
89	arb	Num	8	F19.4	20.4	Accounts Receivable/Debtors - Brokers, Dealers, and Clearing Organizations
90	arc	Num	8	F19.4	20.4	Accounts Receivable/Debtors - Customer
91	arce	Num	8	F19.4	20.4	As Reported Core - After-tax
92	arced	Num	8	F19.4	20.4	As Reported Core - Diluted EPS Effect
93	arceeps	Num	8	F19.4	20.4	As Reported Core - Basic EPS Effect
94	artfs	Num	8	F19.4	20.4	Accounts Receivable/Debtors - Total
95	at	Num	8	F19.4	20.4	Assets - Total
944	au	Char	8	$8.	$8.	Auditor
96	aul3	Num	8	F19.4	20.4	Assets Level3 (Unobservable)
945	auop	Char	8	$8.	$8.	Auditor Opinion
946	auopic	Char	1	$1.	$1.	Auditor Opinion - Internal Control
97	autxr	Num	8	F19.4	20.4	Appropriations to Untaxed Reserves
98	balr	Num	8	F19.4	20.4	Benefits Assumed - Life
99	banlr	Num	8	F19.4	20.4	Benefits Assumed - Nonlife
100	bast	Num	8	F19.4	20.4	Average Short-Term Borrowings
101	bastr	Num	8	F19.4	20.4	Average Short-Term Borrowings Rate
102	batr	Num	8	F19.4	20.4	Benefits Assumed - Total
103	bcef	Num	8	F19.4	20.4	Brokerage, Clearing and Exchange Fees
104	bclr	Num	8	F19.4	20.4	Benefits Ceded - Life
105	bcltbl	Num	8	F19.4	20.4	Benefits and Claims - Total (Business Line)
106	bcnlr	Num	8	F19.4	20.4	Benefits Ceded - Nonlife
107	bcrbl	Num	8	F19.4	20.4	Benefits and Claims - Reinsurance (Business Line)
108	bct	Num	8	F19.4	20.4	Benefits and Claims - Total (Insurance)
109	bctbl	Num	8	F19.4	20.4	Benefits and Claims - Other (Business Line)
110	bctr	Num	8	F19.4	20.4	Benefits Ceded - Total
111	billexce	Num	8	20.4	20.4	Billings in Excess of Cost & Earnings
112	bkvlps	Num	8	F19.4	20.4	Book Value Per Share
113	bltbl	Num	8	F19.4	20.4	Benefits - Life - Total (Business Line)
17	bspr	Char	8	$8.	$8.	Balance Sheet Presentation
114	ca	Num	8	F19.4	20.4	Customers'' Acceptance
115	capr1	Num	8	F19.4	20.4	Risk-Adjusted Capital Ratio - Tier 1
116	capr2	Num	8	F19.4	20.4	Risk-Adjusted Capital Ratio - Tier 2
117	capr3	Num	8	F19.4	20.4	Risk-Adjusted Capital Ratio - Combined
118	caps	Num	8	F19.4	20.4	Capital Surplus/Share Premium Reserve
119	capsft	Num	8	20.4	20.4	Capitalized Software
120	capx	Num	8	F19.4	20.4	Capital Expenditures
121	capxv	Num	8	F19.4	20.4	Capital Expend Property, Plant and Equipment Schd V
122	cb	Num	8	F19.4	20.4	Compensating Balance
123	cbi	Num	8	F19.4	20.4	Claims Incurred - Insurance
124	cdpac	Num	8	F19.4	20.4	Capitalized Deferred Polcy Acquisition Costs
125	cdvc	Num	8	F19.4	20.4	Cash Dividends on Common Stock (Cash Flow)
126	ceiexbill	Num	8	20.4	20.4	Cost & Earnings in Excess of Billings
947	ceoso	Char	1	$1.	$1.	Chief Executive Officer SOX Certification
127	ceq	Num	8	F19.4	20.4	Common/Ordinary Equity - Total
128	ceql	Num	8	F19.4	20.4	Common Equity - Liquidation Value
129	ceqt	Num	8	F19.4	20.4	Common Equity - Tangible
130	cfbd	Num	8	F19.4	20.4	Commissions and Fees - (Broker/Dealer)
131	cfere	Num	8	F19.4	20.4	Commissions and Fees - (Real Estate)
132	cfo	Num	8	F19.4	20.4	Commissions and Fees - Other
948	cfoso	Char	1	$1.	$1.	Chief Financial Officer SOX Certification
133	cfpdo	Num	8	F19.4	20.4	Commissions and Fees Paid - Other
134	cga	Num	8	F19.4	20.4	Capital Gains - After-Tax
135	cgri	Num	8	F19.4	20.4	Capital Gains - Realized (Insurance)
136	cgti	Num	8	F19.4	20.4	Capital Gains - Total (Insurance)
137	cgui	Num	8	F19.4	20.4	Capital Gains - Unrealized (Insurance)
138	ch	Num	8	F19.4	20.4	Cash
139	che	Num	8	F19.4	20.4	Cash and Short-Term Investments
140	chech	Num	8	F19.4	20.4	Cash and Cash Equivalents - Increase/(Decrease)
141	chs	Num	8	F19.4	20.4	Cash and Deposits - Segregated
142	ci	Num	8	F19.4	20.4	Comprehensive Income - Total
143	cibegni	Num	8	F19.4	20.4	Comp Inc - Beginning Net Income
144	cicurr	Num	8	F19.4	20.4	Comp Inc - Currency Trans Adj
145	cidergl	Num	8	F19.4	20.4	Comp Inc - Derivative Gains/Losses
923	cik	Char	10	$10.	$10.	CIK Number
146	cimii	Num	8	F19.4	20.4	Comprehensive Income - Noncontrolling Interest
147	ciother	Num	8	F19.4	20.4	Comp Inc - Other Adj
148	cipen	Num	8	F19.4	20.4	Comp Inc - Minimum Pension Adj
149	cisecgl	Num	8	F19.4	20.4	Comp Inc - Securities Gains/Losses
150	citotal	Num	8	F19.4	20.4	Comprehensive Income - Parent
151	cld2	Num	8	F19.4	20.4	Capitalized Leases - Due in 2nd Year
152	cld3	Num	8	F19.4	20.4	Capitalized Leases - Due in 3rd Year
153	cld4	Num	8	F19.4	20.4	Capitalized Leases - Due in 4th Year
154	cld5	Num	8	F19.4	20.4	Capitalized Leases - Due in 5th Year
155	clfc	Num	8	F19.4	20.4	Contingent Liabilities - Forward and Future Contracts
156	clfx	Num	8	F19.4	20.4	Contingent Liabilities - Foreign Exchange Commitments
157	clg	Num	8	F19.4	20.4	Contingent Liabilities - Guarantees
158	clis	Num	8	F19.4	20.4	Contingent Liabilities - Interest Rate Swaps
159	cll	Num	8	F19.4	20.4	Contingent Liabilities - Letters of Credit
160	cllc	Num	8	F19.4	20.4	Contingent Liabilities - Loan Commitments
161	clo	Num	8	F19.4	20.4	Contingent Liabilities - Other
162	clrll	Num	8	F19.4	20.4	Credit Loss Reserve Allocated for LDC Loans
163	clt	Num	8	F19.4	20.4	Contingent Liabilities - Total
164	cmp	Num	8	F19.4	20.4	Commercial Paper
165	cnltbl	Num	8	F19.4	20.4	Claims - Non-Life - Total (Business Line)
166	cogs	Num	8	F19.4	20.4	Cost of Goods Sold
18	compst	Char	8	$8.	$8.	Comparability Status
10	conm	Char	70	$70.	$70.	Company Name
5	consol	Char	2	$2.	$2.	Level of Consolidation - Company Annual Descriptor
924	costat	Char	1	$1.	$1.	Active/Inactive Status Marker
167	cpcbl	Num	8	F19.4	20.4	Commercial Property and Casualty Claims (Business Line)
168	cpdoi	Num	8	F19.4	20.4	Claims Paid - Other
169	cpnli	Num	8	F19.4	20.4	Claims Paid - Non-Life
170	cppbl	Num	8	F19.4	20.4	Commercial Property and Casualty Premiums (Business Line)
171	cprei	Num	8	F19.4	20.4	Claims Paid - Reinsurance
172	crv	Num	8	F19.4	20.4	Consolidation Reserves
173	crvnli	Num	8	F19.4	20.4	Reserves for Claims (Losses) - Nonlife (Insurance)
174	cshfd	Num	8	F19.4	20.4	Common Shares Used to Calc Earnings Per Share - Fully Diluted
175	cshi	Num	8	F19.4	20.4	Common Shares Issued
176	csho	Num	8	F19.4	20.4	Common Shares Outstanding
177	cshpri	Num	8	F19.4	20.4	Common Shares Used to Calculate Earnings Per Share - Basic
178	cshr	Num	8	F19.4	20.4	Common/Ordinary Shareholders
179	cshrc	Num	8	F19.4	20.4	Common Shares Reserved for Conversion - Convertible Debt
180	cshrp	Num	8	F19.4	20.4	Common Shares Reserved for Conversion - Preferred Stock
181	cshrso	Num	8	F19.4	20.4	Common Shares Reserved for Conversion - Stock Options
182	cshrt	Num	8	F19.4	20.4	Common Shares Reserved for Conversion - Total
183	cshrw	Num	8	F19.4	20.4	Common Shares Reserved for Conversion - Warrants and Other
928	cshtr_c	Num	8	F19.4	20.4	Common Shares Traded - Annual - Calendar
935	cshtr_f	Num	8	F19.4	20.4	Common Shares Traded - Annual - Fiscal
184	cstk	Num	8	F19.4	20.4	Common/Ordinary Stock (Capital)
185	cstkcv	Num	8	F19.4	20.4	Common Stock-Carrying Value
186	cstke	Num	8	F19.4	20.4	Common Stock Equivalents - Dollar Savings
19	curcd	Char	3	$3.	$3.	ISO Currency Code
20	curncd	Char	3	$3.	$3.	Native Currency Code
21	currtr	Num	8	F25.12	26.12	Currency Translation Rate
22	curuscn	Num	8	F19.4	20.4	US Canadian Translation Rate
9	cusip	Char	20	$9.	 	CUSIP
2	datadate	Num	8	YYMMDDN8.	 	Data Date
7	datafmt	Char	12	$12.	$12.	Data Format
187	dbi	Num	8	F19.4	20.4	Death Benefits - Insurance
188	dc	Num	8	F19.4	20.4	Deferred Charges
189	dclo	Num	8	F19.4	20.4	Debt - Capitalized Lease Obligations
190	dcom	Num	8	F19.4	20.4	Deferred Compensation
191	dcpstk	Num	8	F19.4	20.4	Convertible Debt and Preferred Stock
192	dcs	Num	8	F19.4	20.4	Debt - Consolidated Subsidiary
193	dcvsr	Num	8	F19.4	20.4	Debt - Senior Convertible
194	dcvsub	Num	8	F19.4	20.4	Debt - Subordinated Convertible
195	dcvt	Num	8	F19.4	20.4	Debt - Convertible
196	dd	Num	8	F19.4	20.4	Debt - Debentures
197	dd1	Num	8	F19.4	20.4	Long-Term Debt Due in One Year
198	dd2	Num	8	F19.4	20.4	Debt - Due in 2nd Year
199	dd3	Num	8	F19.4	20.4	Debt - Due in 3rd Year
200	dd4	Num	8	F19.4	20.4	Debt - Due in 4th Year
201	dd5	Num	8	F19.4	20.4	Debt - Due in 5th Year
202	depc	Num	8	F19.4	20.4	Depreciation and Depletion (Cash Flow)
203	derac	Num	8	20.4	20.4	Derivative Assets - Current
204	deralt	Num	8	20.4	20.4	Derivative Assets Long-Term
205	derhedgl	Num	8	20.4	20.4	Gains/Losses on Derivatives and Hedging
206	derlc	Num	8	20.4	20.4	Derivative Liabilities- Current
207	derllt	Num	8	20.4	20.4	Derivative Liabilities Long-Term
208	dfpac	Num	8	F19.4	20.4	Deferred Policy Acquisition Costs
209	dfs	Num	8	F19.4	20.4	Debt - Finance Subsidiary
210	dfxa	Num	8	F19.4	20.4	Depreciation of Tangible Fixed Assets
211	diladj	Num	8	F19.4	20.4	Dilution Adjustment
212	dilavx	Num	8	F19.4	20.4	Dilution Available - Excluding Extraordinary Items
213	dlc	Num	8	F19.4	20.4	Debt in Current Liabilities - Total
214	dlcch	Num	8	F19.4	20.4	Current Debt - Changes
215	dltis	Num	8	F19.4	20.4	Long-Term Debt - Issuance
216	dlto	Num	8	F19.4	20.4	Other Long-term Debt
217	dltp	Num	8	F19.4	20.4	Long-Term Debt - Tied to Prime
218	dltr	Num	8	F19.4	20.4	Long-Term Debt - Reduction
219	dltsub	Num	8	F19.4	20.4	Long-Term Debt - Subordinated
220	dltt	Num	8	F19.4	20.4	Long-Term Debt - Total
221	dm	Num	8	F19.4	20.4	Debt - Mortgages & Other Secured
222	dn	Num	8	F19.4	20.4	Debt - Notes
223	do	Num	8	F19.4	20.4	Discontinued Operations
224	donr	Num	8	F19.4	20.4	Nonrecurring Disc Operations
225	dp	Num	8	F19.4	20.4	Depreciation and Amortization
226	dpacb	Num	8	F19.4	20.4	Depreciation (Accumulated) - Buildings
227	dpacc	Num	8	F19.4	20.4	Depreciation (Accumulated) - Construction in Progress
228	dpacli	Num	8	F19.4	20.4	Depreciation (Accumulated) - Land and Improvements
229	dpacls	Num	8	F19.4	20.4	Depreciation (Accumulated) - Leases
230	dpacme	Num	8	F19.4	20.4	Depreciation (Accumulated) - Machinery and Equipment
231	dpacnr	Num	8	F19.4	20.4	Depreciation (Accumulated) - Natural Resources
232	dpaco	Num	8	F19.4	20.4	Depreciation (Accumulated) - Other
233	dpacre	Num	8	F19.4	20.4	Accumulated Depreciation of RE Property
234	dpact	Num	8	F19.4	20.4	Depreciation, Depletion and Amortization (Accumulated)
235	dpc	Num	8	F19.4	20.4	Depreciation and Amortization (Cash Flow)
236	dpdc	Num	8	F19.4	20.4	Deposits - Demand - Customer
237	dpltb	Num	8	F19.4	20.4	Deposits - Long-Term Time - Bank
238	dpret	Num	8	F19.4	20.4	Depr/Amort of Property
239	dpsc	Num	8	F19.4	20.4	Deposits - Savings - Customer
240	dpstb	Num	8	F19.4	20.4	Deposits - Short-Term Demand - Bank
241	dptb	Num	8	F19.4	20.4	Deposits - Total - Banks
242	dptc	Num	8	F19.4	20.4	Deposits - Total - Customer
243	dptic	Num	8	F19.4	20.4	Deposits - Time - Customer
244	dpvieb	Num	8	F19.4	20.4	Depreciation (Accumulated) - Ending Balance (Schedule VI)
245	dpvio	Num	8	F19.4	20.4	Depreciation (Accumulated) - Other Changes (Schedule VI)
246	dpvir	Num	8	F19.4	20.4	Depreciation (Accumulated) - Retirements (Schedule VI)
247	drc	Num	8	F19.4	20.4	Deferred Revenue - Current
248	drci	Num	8	F19.4	20.4	Deduction From Policy and Claims Reserves for Reinsurance Ceded
249	drlt	Num	8	F19.4	20.4	Deferred Revenue - Long-term
250	ds	Num	8	F19.4	20.4	Debt-Subordinated
251	dt	Num	8	20.4	20.4	Total Debt Including Current
252	dtea	Num	8	F19.4	20.4	Extinguishment of Debt After-tax
253	dted	Num	8	F19.4	20.4	Extinguishment of Debt Diluted EPS Effect
254	dteeps	Num	8	F19.4	20.4	Extinguishment of Debt Basic EPS Effect
255	dtep	Num	8	F19.4	20.4	Extinguishment of Debt Pretax
256	dudd	Num	8	F19.4	20.4	Debt - Unamortized Debt Discount and Other
257	dv	Num	8	F19.4	20.4	Cash Dividends (Cash Flow)
258	dvc	Num	8	F19.4	20.4	Dividends Common/Ordinary
259	dvdnp	Num	8	F19.4	20.4	Dividends Declared and Not Provided
260	dvintf	Num	8	20.4	20.4	Dividends & Interest Receivable (Cash Flow)
261	dvp	Num	8	F19.4	20.4	Dividends - Preferred/Preference
262	dvpa	Num	8	F19.4	20.4	Preferred Dividends in Arrears
263	dvpd	Num	8	F19.4	20.4	Cash Dividends Paid
264	dvpdp	Num	8	F19.4	20.4	Dividends and Bonuses Paid Policyholders
265	dvpibb	Num	8	F19.4	20.4	Depreciation (Accumulated) - Beginning Balance (Schedule VI)
929	dvpsp_c	Num	8	F19.4	20.4	Dividends per Share - Pay Date - Calendar
936	dvpsp_f	Num	8	F19.4	20.4	Dividends per Share - Pay Date - Fiscal
930	dvpsx_c	Num	8	F19.4	20.4	Dividends per Share - Ex-Date - Calendar
937	dvpsx_f	Num	8	F19.4	20.4	Dividends per Share - Ex-Date - Fiscal
266	dvrpiv	Num	8	F19.4	20.4	Dividends Received from Permanent Investments
267	dvrre	Num	8	F19.4	20.4	Development Revenue (Real Estate)
268	dvsco	Num	8	F19.4	20.4	Dividends - Share Capital - Other
269	dvt	Num	8	F19.4	20.4	Dividends - Total
270	dxd2	Num	8	F19.4	20.4	Debt (excl Capitalized Leases) - Due in 2nd Year
271	dxd3	Num	8	F19.4	20.4	Debt (excl Capitalized Leases) - Due in 3rd Year
272	dxd4	Num	8	F19.4	20.4	Debt (excl Capitalized Leases) - Due in 4th Year
273	dxd5	Num	8	F19.4	20.4	Debt (excl Capitalized Leases) - Due in 5th Year
274	ea	Num	8	F19.4	20.4	Exchange Adjustments (Assets)
275	ebit	Num	8	F19.4	20.4	Earnings Before Interest and Taxes
276	ebitda	Num	8	F19.4	20.4	Earnings Before Interest
277	eiea	Num	8	F19.4	20.4	Equity in Earnings - After-Tax
278	emol	Num	8	F19.4	20.4	Directors'' Emoluments
279	emp	Num	8	F19.4	20.4	Employees
280	epsfi	Num	8	F19.4	20.4	Earnings Per Share (Diluted) - Including Extraordinary Items
281	epsfx	Num	8	F19.4	20.4	Earnings Per Share (Diluted) - Excluding Extraordinary Items
282	epspi	Num	8	F19.4	20.4	Earnings Per Share (Basic) - Including Extraordinary Items
283	epspx	Num	8	F19.4	20.4	Earnings Per Share (Basic) - Excluding Extraordinary Items
284	esopct	Num	8	F19.4	20.4	Common ESOP Obligation - Total
285	esopdlt	Num	8	F19.4	20.4	ESOP Debt - Long Term
286	esopnr	Num	8	F19.4	20.4	Preferred ESOP Obligation - Non-Redeemable
287	esopr	Num	8	F19.4	20.4	Preferred ESOP Obligation - Redeemable
288	esopt	Num	8	F19.4	20.4	Preferred ESOP Obligation - Total
289	esub	Num	8	F19.4	20.4	Equity in Earnings - Unconsolidated Subsidiaries
290	esubc	Num	8	F19.4	20.4	Equity in Net Loss - Earnings
291	excadj	Num	8	F19.4	20.4	Exchange Adjustments (Liabilities)
922	exchg	Num	8	F6.	6.	Stock Exchange Code
292	exre	Num	8	F19.4	20.4	Exchange Rate Effect
293	fatb	Num	8	F19.4	20.4	Property, Plant, and Equipment - Buildings at Cost
294	fatc	Num	8	F19.4	20.4	Property, Plant, and Equipment - Construction in Progress at Cost
295	fatd	Num	8	F19.4	20.4	Fixed Assets and Investments - Disposals - Gain (Loss)
296	fate	Num	8	F19.4	20.4	Property, Plant, and Equipment - Machinery and Equipment at Cost
297	fatl	Num	8	F19.4	20.4	Property, Plant, and Equipment - Leases at Cost
298	fatn	Num	8	F19.4	20.4	Property, Plant, and Equipment - Natural Resources at Cost
299	fato	Num	8	F19.4	20.4	Property, Plant, and Equipment - Other at Cost
300	fatp	Num	8	F19.4	20.4	Property, Plant, and Equipment - Land and Improvements at Cost
301	fca	Num	8	F19.4	20.4	Foreign Exchange Income (Loss)
35	fdate	Num	8	YYMMDDN8.	 	Final Date
302	fdfr	Num	8	F19.4	20.4	Federal Funds Purchased
303	fea	Num	8	F19.4	20.4	Foreign Exchange Assets
304	fel	Num	8	F19.4	20.4	Foreign Exchange Liabilities
305	ffo	Num	8	F19.4	20.4	Funds From Operations (REIT)
306	ffs	Num	8	F19.4	20.4	Federal Funds Sold
307	fiao	Num	8	F19.4	20.4	Financing Activities - Other
925	fic	Char	3	$3.	$3.	Current ISO Country Code - Incorporation
308	finaco	Num	8	20.4	20.4	Finance Division Other Current Assets, Total
23	final	Char	2	$2.	$2.	Final Indicator Flag
309	finao	Num	8	20.4	20.4	Finance Division Other Long-Term Assets, Total
310	fincf	Num	8	F19.4	20.4	Financing Activities - Net Cash Flow
311	finch	Num	8	20.4	20.4	Finance Division - Cash
312	findlc	Num	8	20.4	20.4	Finance Division Long-Term Debt Current
313	findlt	Num	8	20.4	20.4	Finance Division Debt Long-Term
314	finivst	Num	8	20.4	20.4	Finance Division Short-Term Investments
315	finlco	Num	8	20.4	20.4	Finance Division Other Current Liabilities, Total
316	finlto	Num	8	20.4	20.4	Finance Division Other Long Term Liabilities, Total
317	finnp	Num	8	20.4	20.4	Finance Division Notes Payable
318	finrecc	Num	8	20.4	20.4	Finance Division Current Receivables
319	finreclt	Num	8	20.4	20.4	Finance Division Long-Term Receivables
320	finrev	Num	8	20.4	20.4	Finance Division Revenue
321	finxint	Num	8	20.4	20.4	Finance Division Interest Expense
322	finxopr	Num	8	20.4	20.4	Finance Division Operating Expense
323	fopo	Num	8	F19.4	20.4	Funds from Operations - Other
324	fopox	Num	8	F19.4	20.4	Funds from Operations - Other excluding Option Tax Benefit
325	fopt	Num	8	F19.4	20.4	Funds From Operations - Total
326	fsrco	Num	8	F19.4	20.4	Sources of Funds - Other
327	fsrct	Num	8	F19.4	20.4	Sources of Funds - Total
328	fuseo	Num	8	F19.4	20.4	Uses of Funds - Other
329	fuset	Num	8	F19.4	20.4	Uses of Funds - Total
3	fyear	Num	8	F6.	6.	Data Year - Fiscal
24	fyr	Num	8	F4.	6.	Fiscal Year-end Month
330	gbbl	Num	8	F19.4	20.4	Group Benefits (Business Line)
331	gdwl	Num	8	F19.4	20.4	Goodwill
332	gdwlam	Num	8	F19.4	20.4	Goodwill Amortization
333	gdwlia	Num	8	F19.4	20.4	Impairments of Goodwill After-tax
334	gdwlid	Num	8	F19.4	20.4	Impairments of Goodwill Diluted EPS Effect
335	gdwlieps	Num	8	F19.4	20.4	Impairments of Goodwill Basic EPS Effect
336	gdwlip	Num	8	F19.4	20.4	Impairments of Goodwill Pretax
337	geqrv	Num	8	F19.4	20.4	Grants - Equity Reserves
338	gla	Num	8	F19.4	20.4	Gain/Loss After-tax
339	glcea	Num	8	F19.4	20.4	Gain/Loss on Sale (Core Earnings Adjusted) After-tax
340	glced	Num	8	F19.4	20.4	Gain/Loss on Sale (Core Earnings Adjusted) Diluted EPS
341	glceeps	Num	8	F19.4	20.4	Gain/Loss on Sale (Core Earnings Adjusted) Basic EPS Effect
342	glcep	Num	8	F19.4	20.4	Gain/Loss on Sale (Core Earnings Adjusted) Pretax
343	gld	Num	8	F19.4	20.4	Gain/Loss Diluted EPS Effect
344	gleps	Num	8	F19.4	20.4	Gain/Loss Basic EPS Effect
345	gliv	Num	8	20.4	20.4	Gains/Losses on investments
346	glp	Num	8	F19.4	20.4	Gain/Loss Pretax
347	govgr	Num	8	F19.4	20.4	Government Grants
348	govtown	Num	8	F19.4	20.4	Percent of Gov''t Owned
349	gp	Num	8	F19.4	20.4	Gross Profit (Loss)
350	gphbl	Num	8	F19.4	20.4	Group Premiums - Health (Business Line)
351	gplbl	Num	8	F19.4	20.4	Group Premiums - Life (Business Line)
352	gpobl	Num	8	F19.4	20.4	Group Premiums - Other (Business Line)
353	gprbl	Num	8	F19.4	20.4	Group Premiums - Retirement Benefits (Business Line)
354	gptbl	Num	8	F19.4	20.4	Group Premiums - Total (Business Line)
1	gvkey	Char	6	$6.	$6.	Global Company Key
355	gwo	Num	8	F19.4	20.4	Goodwill Written Off
356	hedgegl	Num	8	F19.4	20.4	Gain/Loss on Ineffective Hedges
357	iaeq	Num	8	F19.4	20.4	Investment Assets - Equity Securities (Insurance)
358	iaeqci	Num	8	F19.4	20.4	Investment Assets (Insurance) - Equity Securities (Cost)
359	iaeqmi	Num	8	F19.4	20.4	Investment Assets (Insurance) - Equity Securities (Market)
360	iafici	Num	8	F19.4	20.4	Investment Assets (Insurance) - Fixed Income Securities (Cost)
361	iafxi	Num	8	F19.4	20.4	Investment Assets - Fixed Income Securities (Insurance)
362	iafxmi	Num	8	F19.4	20.4	Investment Assets (Insurance) - Fixed Income Securities (Market)
363	iali	Num	8	F19.4	20.4	Investment Assets (Insurance) - Listed Securities-Total
364	ialoi	Num	8	F19.4	20.4	Investment Assets - Loans - Other (Insurance)
365	ialti	Num	8	F19.4	20.4	Investment Assets - Loans - Total (Insurance)
366	iamli	Num	8	F19.4	20.4	Investment Assets - Mortgage Loans (Insurance)
367	iaoi	Num	8	F19.4	20.4	Investment Assets - Other (Insurance)
368	iapli	Num	8	F19.4	20.4	Investment Assets - Policy Loans (Insurance)
369	iarei	Num	8	F19.4	20.4	Investment Assets - Real Estate (Insurance)
370	iasci	Num	8	F19.4	20.4	Investment Assets (Insurance) - Securities - Sundry (Cost)
371	iasmi	Num	8	F19.4	20.4	Investment Assets (Insurance) - Securities - Sundry (Market)
372	iassi	Num	8	F19.4	20.4	Investment Assets - Securities - Sundry (Insurance)
373	iasti	Num	8	F19.4	20.4	Investment Assets - Securities - Total (Insurance)
374	iatci	Num	8	F19.4	20.4	Investment Assets (Insurance) - Securities - Total (Cost)
375	iati	Num	8	F19.4	20.4	Investment Assets - Total (Insurance)
376	iatmi	Num	8	F19.4	20.4	Investment Assets (Insurance) - Securities - Total (Market)
377	iaui	Num	8	F19.4	20.4	Investment Assets (Insurance) - Unlisted Securities - Total
378	ib	Num	8	F19.4	20.4	Income Before Extraordinary Items
379	ibadj	Num	8	F19.4	20.4	Income Before Extraordinary Items - Adjusted for Common Stock Equivalents
380	ibbl	Num	8	F19.4	20.4	Individual Benefits (Business Line)
381	ibc	Num	8	F19.4	20.4	Income Before Extraordinary Items (Cash Flow)
382	ibcom	Num	8	F19.4	20.4	Income Before Extraordinary Items - Available for Common
383	ibki	Num	8	F19.4	20.4	Investment Banking Income
384	ibmii	Num	8	F19.4	20.4	Income before Extraordinary Items and Noncontrolling Interests
385	icapt	Num	8	F19.4	20.4	Invested Capital - Total
386	idiis	Num	8	F19.4	20.4	Interest and Dividend Income - Investment Securities
387	idilb	Num	8	F19.4	20.4	Interest and Dividend Income - Loans/Claims/Advances - Banks
388	idilc	Num	8	F19.4	20.4	Interest and Dividend Income - Loans/Claims/Advances - Customers
389	idis	Num	8	F19.4	20.4	Interest and Dividend Income - Sundry
390	idist	Num	8	F19.4	20.4	Interest and Dividend Income - Short-Term Investments
391	idit	Num	8	F19.4	20.4	Interest and Related Income - Total
392	idits	Num	8	F19.4	20.4	Interest and Dividend Income - Trading Securities
921	iid	Char	3	$3.	$3.	Issue ID - Security
393	iire	Num	8	F19.4	20.4	Investment Income (Real Estate)
4	indfmt	Char	12	$12.	$12.	Industry Format
394	initb	Num	8	F19.4	20.4	Income - Non-interest - Total (Bank)
395	intan	Num	8	F19.4	20.4	Intangible Assets - Total
396	intano	Num	8	F19.4	20.4	Other Intangibles
397	intc	Num	8	F19.4	20.4	Interest Capitalized
398	intpn	Num	8	F19.4	20.4	Interest Paid - Net
399	invch	Num	8	F19.4	20.4	Inventory - Decrease (Increase)
400	invfg	Num	8	F19.4	20.4	Inventories - Finished Goods
401	invo	Num	8	F19.4	20.4	Inventories - Other
402	invofs	Num	8	F19.4	20.4	Inventory/Stock - Other
403	invreh	Num	8	F19.4	20.4	Inventory/Stock - Real Estate Held for Development
404	invrei	Num	8	F19.4	20.4	Inventory/Stock - Real Estate Under Development
405	invres	Num	8	F19.4	20.4	Inventory/Stock - Real Estate Held for Sale
406	invrm	Num	8	F19.4	20.4	Inventories - Raw Materials
407	invt	Num	8	F19.4	20.4	Inventories - Total
408	invwip	Num	8	F19.4	20.4	Inventories - Work In Process
409	iobd	Num	8	F19.4	20.4	Income - Other (Broker Dealer)
410	ioi	Num	8	F19.4	20.4	Income - Other (Insurance)
411	iore	Num	8	F19.4	20.4	Income - Other (Real Estate)
412	ip	Num	8	F19.4	20.4	Investment Property
413	ipabl	Num	8	F19.4	20.4	Individual Premiums - Annuity (Business Line)
414	ipc	Num	8	F19.4	20.4	Investment Property (Cost)
415	iphbl	Num	8	F19.4	20.4	Individual Premiums - Health (Business Line)
416	iplbl	Num	8	F19.4	20.4	Individual Premiums - Life (Business Line)
417	ipobl	Num	8	F19.4	20.4	Individual Premiums - Other (Business Line)
418	iptbl	Num	8	F19.4	20.4	Individual Premiums - Total (Business Line)
419	ipti	Num	8	F19.4	20.4	Insurance Premiums - Total (Insurance)
420	ipv	Num	8	F19.4	20.4	Investment Property (Valuation)
421	irei	Num	8	F19.4	20.4	Interest and Related Income - Reinsurance (Insurance)
422	irent	Num	8	F19.4	20.4	Rental Income
423	irii	Num	8	F19.4	20.4	Interest and Related Income (Insurance)
424	irli	Num	8	F19.4	20.4	Interest and Related Income - Life (Insurance)
425	irnli	Num	8	F19.4	20.4	Interest and Related Income - Non-Life (Insurance)
426	irsi	Num	8	F19.4	20.4	Interest and Related Income - Sundry (Insurance)
427	iseq	Num	8	F19.4	20.4	Investment Securities - Equity
428	iseqc	Num	8	F19.4	20.4	Investment Securities - Equity (Cost)
429	iseqm	Num	8	F19.4	20.4	Investment Securities - Equity (Market)
430	isfi	Num	8	F19.4	20.4	Investment Securities - Fixed Income
431	isfxc	Num	8	F19.4	20.4	Investment Securities - Fixed Income (Cost)
432	isfxm	Num	8	F19.4	20.4	Investment Securities - Fixed Income (Market)
433	isgr	Num	8	F19.4	20.4	Investment Securities - Gain (Loss) - Realized
434	isgt	Num	8	F19.4	20.4	Investment Securities - Gain (Loss) - Total
435	isgu	Num	8	F19.4	20.4	Investment Securities - Gain (Loss) - Unrealized
436	islg	Num	8	F19.4	20.4	Investment Securities - Local Governments
437	islgc	Num	8	F19.4	20.4	Investment Securities - Local Governments (Cost)
438	islgm	Num	8	F19.4	20.4	Investment Securities - Local Governments (Market)
439	islt	Num	8	F19.4	20.4	Investment Securities - Listed - Total
25	ismod	Num	8	F6.	6.	Income Statement Model Number
440	isng	Num	8	F19.4	20.4	Investment Securities - National Governments
441	isngc	Num	8	F19.4	20.4	Investment Securities - National Governments (Cost)
442	isngm	Num	8	F19.4	20.4	Investment Securities - National Governments (Market)
443	isotc	Num	8	F19.4	20.4	Invetsment Securities - Other (Cost)
444	isoth	Num	8	F19.4	20.4	Investment Securities - Other
445	isotm	Num	8	F19.4	20.4	Invetsment Securities - Other (Market)
446	issc	Num	8	F19.4	20.4	Investment Securities - Sundry (Cost)
447	issm	Num	8	F19.4	20.4	Investment Securities - Sundry (Market)
448	issu	Num	8	F19.4	20.4	Investment Securities - Sundry
449	ist	Num	8	F19.4	20.4	Investment Securities -Total
450	istc	Num	8	F19.4	20.4	Investment Securities - Total (Cost)
451	istm	Num	8	F19.4	20.4	Investment Securities - Total (Market)
452	isut	Num	8	F19.4	20.4	Investment Securities - Unlisted - Total
453	itcb	Num	8	F19.4	20.4	Investment Tax Credit (Balance Sheet)
454	itcc	Num	8	F19.4	20.4	Investment Tax Credit - Net (Cash Flow) - Utility
455	itci	Num	8	F19.4	20.4	Investment Tax Credit (Income Account)
456	ivaco	Num	8	F19.4	20.4	Investing Activities - Other
457	ivaeq	Num	8	F19.4	20.4	Investment and Advances - Equity
458	ivao	Num	8	F19.4	20.4	Investment and Advances - Other
459	ivch	Num	8	F19.4	20.4	Increase in Investments
460	ivgod	Num	8	F19.4	20.4	Investments Grants and Other Deductions
461	ivi	Num	8	F19.4	20.4	Investment Income - Total (Insurance)
462	ivncf	Num	8	F19.4	20.4	Investing Activities - Net Cash Flow
463	ivpt	Num	8	F19.4	20.4	Investments - Permanent - Total
464	ivst	Num	8	F19.4	20.4	Short-Term Investments - Total
465	ivstch	Num	8	F19.4	20.4	Short-Term Investments - Change
466	lcabg	Num	8	F19.4	20.4	Loans/Claims/Advances - Banks and Government - Total
467	lcacl	Num	8	F19.4	20.4	Loans/Claims/Advances - Commercial
468	lcacr	Num	8	F19.4	20.4	Loans/Claims/Advances - Consumer
469	lcag	Num	8	F19.4	20.4	Loans/Claims/Advances - Government
470	lcal	Num	8	F19.4	20.4	Loans/Claims/Advances - Lease
471	lcalt	Num	8	F19.4	20.4	Loans/Claims/Advances - Long-Term (Banks)
472	lcam	Num	8	F19.4	20.4	Loans/Claims/Advances - Mortgage
473	lcao	Num	8	F19.4	20.4	Loans/Claims/Advances - Other
474	lcast	Num	8	F19.4	20.4	Loans/Claims/Advances - Short-Term - Banks
475	lcat	Num	8	F19.4	20.4	Loans/Claims/Advances - Total
476	lco	Num	8	F19.4	20.4	Current Liabilities - Other - Total
477	lcox	Num	8	F19.4	20.4	Current Liabilities - Other - Sundry
478	lcoxar	Num	8	F19.4	20.4	Current Liabilities - Other - Total As Reported
479	lcoxdr	Num	8	F19.4	20.4	Current Liabilities - Other - Excluding Deferred Revenue
480	lct	Num	8	F19.4	20.4	Current Liabilities - Total
481	lcuacu	Num	8	F19.4	20.4	Loans/Claims/Advances - Customer - Total
482	li	Num	8	F19.4	20.4	Leasing Income
483	lif	Num	8	F19.4	20.4	Life Insurance in Force
484	lifr	Num	8	F19.4	20.4	LIFO Reserve
485	lifrp	Num	8	20.4	20.4	LIFO Reserve - Prior
486	lloml	Num	8	F19.4	20.4	LDC Loans Outstanding - Medium and Long-Term
487	lloo	Num	8	F19.4	20.4	LDC Loans Outstanding - Other
488	llot	Num	8	F19.4	20.4	LDC Loans Outstanding - Total
489	llrci	Num	8	F19.4	20.4	Loan Loss Recoveries - Credited to Income
490	llrcr	Num	8	F19.4	20.4	Loan Loss Recoveries - Credited to Reserves
491	llwoci	Num	8	F19.4	20.4	Loan Loss Written Off - Charged to Income
492	llwocr	Num	8	F19.4	20.4	Loan Loss Written Off - Charged to Reserves
493	lno	Num	8	F19.4	20.4	Liabilities Netting & Other Adjustments
494	lo	Num	8	F19.4	20.4	Liabilities - Other - Total
495	lol2	Num	8	F19.4	20.4	Liabilities Level2 (Observable)
496	loxdr	Num	8	F19.4	20.4	Liabilities - Other - Excluding Deferred Revenue
497	lqpl1	Num	8	F19.4	20.4	Liabilities Level1 (Quoted Prices)
498	lrv	Num	8	F19.4	20.4	Legal Reserves
499	ls	Num	8	F19.4	20.4	Liabilities - Other - Sundry
500	lse	Num	8	F19.4	20.4	Liabilities and Stockholders Equity - Total
501	lst	Num	8	F19.4	20.4	Life Insurance Surrenders and Terminations
502	lt	Num	8	F19.4	20.4	Liabilities - Total
26	ltcm	Char	8	$8.	$8.	Long Term Contract Method
503	lul3	Num	8	F19.4	20.4	Liabilities Level3 (Unobservable)
504	mib	Num	8	F19.4	20.4	Noncontrolling Interest (Balance Sheet)
505	mibn	Num	8	F19.4	20.4	Noncontrolling Interests - Nonredeemable - Balance Sheet
506	mibt	Num	8	F19.4	20.4	Noncontrolling Interests - Total - Balance Sheet
507	mii	Num	8	F19.4	20.4	Noncontrolling Interest (Income Account)
938	mkvalt	Num	8	F19.4	20.4	Market Value - Total - Fiscal
508	mrc1	Num	8	F19.4	20.4	Rental Commitments - Minimum - 1st Year
509	mrc2	Num	8	F19.4	20.4	Rental Commitments - Minimum - 2nd Year
510	mrc3	Num	8	F19.4	20.4	Rental Commitments - Minimum - 3rd Year
511	mrc4	Num	8	F19.4	20.4	Rental Commitments - Minimum - 4th Year
512	mrc5	Num	8	F19.4	20.4	Rental Commitments - Minimum - 5th Year
513	mrct	Num	8	F19.4	20.4	Rental Commitments - Minimum - 5 Year Total
514	mrcta	Num	8	F19.4	20.4	Thereafter Portion of Leases
515	msa	Num	8	F19.4	20.4	Marketable Securities Adjustment
516	msvrv	Num	8	F19.4	20.4	Mandatory Securities Valuation Reserve (Statutory)
517	mtl	Num	8	F19.4	20.4	Loans From Securities Finance Companies for Margin Transactions
926	naicsh	Num	8	F9.	11.	North America Industrial Classification System - Historical
518	nat	Num	8	F19.4	20.4	Nonadmitted Assets - Total (Statutory)
519	nco	Num	8	F19.4	20.4	Net Charge-Offs
520	nfsr	Num	8	F19.4	20.4	Non-Financial Services Revenue
521	ni	Num	8	F19.4	20.4	Net Income (Loss)
522	niadj	Num	8	F19.4	20.4	Net Income Adjusted for Common/Ordinary Stock (Capital) Equivalents
523	nieci	Num	8	F19.4	20.4	Net Income Effect Capitalized Interest
524	niint	Num	8	F19.4	20.4	Net Interest Income
525	niintpfc	Num	8	F19.4	20.4	Pro Forma Net Interest Income - Current
526	niintpfp	Num	8	F19.4	20.4	Pro Forma Net Interest Income - Prior
527	niit	Num	8	F19.4	20.4	Net Interest Income (Tax Equivalent)
528	nim	Num	8	F19.4	20.4	Net Interest Margin
529	nio	Num	8	F19.4	20.4	Net Items - Other
530	nipfc	Num	8	F19.4	20.4	Pro Forma Net Income - Current
531	nipfp	Num	8	F19.4	20.4	Pro Forma Net Income - Prior
532	nit	Num	8	F19.4	20.4	Net Item - Total
533	nits	Num	8	F19.4	20.4	Net Income - Total (Statutory)
534	nopi	Num	8	F19.4	20.4	Nonoperating Income (Expense)
535	nopio	Num	8	F19.4	20.4	Nonoperating Income (Expense) - Other
536	np	Num	8	F19.4	20.4	Notes Payable - Short-Term Borrowings
537	npanl	Num	8	F19.4	20.4	Nonperforming Assets - Nonaccrual Loans
538	npaore	Num	8	F19.4	20.4	Nonperforming Assets - Other Real Estate Owned
539	nparl	Num	8	F19.4	20.4	Nonperforming Assets - Restructured Loans
540	npat	Num	8	F19.4	20.4	Nonperforming Assets - Total
541	nrtxt	Num	8	F19.4	20.4	Nonrecurring Income Taxes After-tax
542	nrtxtd	Num	8	F19.4	20.4	Nonrecurring Income Tax Diluted EPS Effect
543	nrtxteps	Num	8	F19.4	20.4	Nonrecurring Income Tax Basic EPS Effect
544	oancf	Num	8	F19.4	20.4	Operating Activities - Net Cash Flow
545	ob	Num	8	F19.4	20.4	Order Backlog
27	ogm	Char	8	$8.	$8.	OIL & GAS METHOD
546	oiadp	Num	8	F19.4	20.4	Operating Income After Depreciation
547	oibdp	Num	8	F19.4	20.4	Operating Income Before Depreciation
548	opeps	Num	8	F19.4	20.4	Earnings Per Share from Operations
549	opili	Num	8	F19.4	20.4	Operating Income - Life
550	opincar	Num	8	F19.4	20.4	Operating Income - As Reported
551	opini	Num	8	F19.4	20.4	Operating Income - Non-Life
552	opioi	Num	8	F19.4	20.4	Operating Income - Other
553	opiri	Num	8	F19.4	20.4	Operating Income - Reinsurance
554	opiti	Num	8	F19.4	20.4	Operating Income - Total
555	oprepsx	Num	8	F19.4	20.4	Earnings Per Share - Diluted - from Operations
556	optca	Num	8	F19.4	20.4	Options - Cancelled (-)
557	optdr	Num	8	F19.4	20.4	Dividend Rate - Assumption (%)
558	optex	Num	8	F19.4	20.4	Options Exercisable (000)
559	optexd	Num	8	F19.4	20.4	Options - Exercised (-)
560	optfvgr	Num	8	F19.4	20.4	Options - Fair Value of Options Granted
561	optgr	Num	8	F19.4	20.4	Options - Granted
562	optlife	Num	8	F19.4	20.4	Life of Options - Assumption (# yrs)
563	optosby	Num	8	F19.4	20.4	Options Outstanding - Beg of Year
564	optosey	Num	8	F19.4	20.4	Options Outstanding - End of Year
565	optprcby	Num	8	F19.4	20.4	Options Outstanding Beg of Year - Price
566	optprcca	Num	8	F19.4	20.4	Options Cancelled - Price
567	optprcex	Num	8	F19.4	20.4	Options Exercised - Price
568	optprcey	Num	8	F19.4	20.4	Options Outstanding End of Year - Price
569	optprcgr	Num	8	F19.4	20.4	Options Granted - Price
570	optprcwa	Num	8	F19.4	20.4	Options Exercisable - Weighted Avg Price
571	optrfr	Num	8	F19.4	20.4	Risk Free Rate - Assumption (%)
572	optvol	Num	8	F19.4	20.4	Volatility - Assumption (%)
573	palr	Num	8	F19.4	20.4	Premiums Assumed - Life
574	panlr	Num	8	F19.4	20.4	Premiums Assumed - Nonlife
575	patr	Num	8	F19.4	20.4	Premiums Assumed - Total
576	pcl	Num	8	F19.4	20.4	Provision - Credit Losses (Income Account)
577	pclr	Num	8	F19.4	20.4	Premiums Ceded - Life
578	pcnlr	Num	8	F19.4	20.4	Premiums Ceded - Nonlife
579	pctr	Num	8	F19.4	20.4	Premiums Ceded - Total
36	pdate	Num	8	YYMMDDN8.	 	Preliminary Date
28	pddur	Num	8	F4.	6.	Period Duration
580	pdvc	Num	8	F19.4	20.4	Cash Dividends on Preferred/Preference Stock (Cash Flow)
581	pi	Num	8	F19.4	20.4	Pretax Income
582	pidom	Num	8	F19.4	20.4	Pretax Income - Domestic
583	pifo	Num	8	F19.4	20.4	Pretax Income - Foreign
584	pll	Num	8	F19.4	20.4	Provision for Loan/Asset Losses
585	pltbl	Num	8	F19.4	20.4	Premiums - Life - Total (Business Line)
586	pnca	Num	8	F19.4	20.4	Core Pension Adjustment
587	pncad	Num	8	F19.4	20.4	Core Pension Adjustment Diluted EPS Effect
588	pncaeps	Num	8	F19.4	20.4	Core Pension Adjustment Basic EPS Effect
589	pncia	Num	8	F19.4	20.4	Core Pension Interest Adjustment After-tax
590	pncid	Num	8	F19.4	20.4	Core Pension Interest Adjustment Diluted EPS Effect
591	pncieps	Num	8	F19.4	20.4	Core Pension Interest Adjustment Basic EPS Effect
592	pncip	Num	8	F19.4	20.4	Core Pension Interest Adjustment Pretax
593	pncwia	Num	8	F19.4	20.4	Core Pension w/o Interest Adjustment After-tax
594	pncwid	Num	8	F19.4	20.4	Core Pension w/o Interest Adjustment Diluted EPS Effect
595	pncwieps	Num	8	F19.4	20.4	Core Pension w/o Interest Adjustment Basic EPS Effect
596	pncwip	Num	8	F19.4	20.4	Core Pension w/o Interest Adjustment Pretax
597	pnlbl	Num	8	F19.4	20.4	Premiums - Nonlife - Total (Business Line)
598	pnli	Num	8	F19.4	20.4	Premiums Written - Non-Life
599	pnrsho	Num	8	F19.4	20.4	Nonred Pfd Shares Outs (000)
600	pobl	Num	8	F19.4	20.4	Premiums - Other (Business Line)
6	popsrc	Char	1	$1.	$1.	Population Source
601	ppcbl	Num	8	F19.4	20.4	Personal Property and Casualty Claims (Business Line)
602	ppegt	Num	8	F19.4	20.4	Property, Plant and Equipment - Total (Gross)
603	ppenb	Num	8	F19.4	20.4	Property, Plant, and Equipment - Buildings (Net)
604	ppenc	Num	8	F19.4	20.4	Property, Plant, and Equipment - Construction in Progress (Net)
605	ppenli	Num	8	F19.4	20.4	Property, Plant, and Equipment - Land and Improvements (Net)
606	ppenls	Num	8	F19.4	20.4	Property, Plant, and Equipment - Leases (Net)
607	ppenme	Num	8	F19.4	20.4	Property, Plant, and Equipment - Machinery and Equipment (Net)
608	ppennr	Num	8	F19.4	20.4	Property, Plant, and Equipment - Natural Resources (Net)
609	ppeno	Num	8	F19.4	20.4	Property, Plant, and Equipment - Other (Net)
610	ppent	Num	8	F19.4	20.4	Property, Plant and Equipment - Total (Net)
611	ppevbb	Num	8	F19.4	20.4	Property, Plant and Equipment - Beginning Balance (Schedule V)
612	ppeveb	Num	8	F19.4	20.4	Property, Plant, and Equipment - Ending Balance (Schedule V)
613	ppevo	Num	8	F19.4	20.4	Property, Plant, and Equipment - Other Changes (Schedule V)
614	ppevr	Num	8	F19.4	20.4	Property, Plant and Equipment - Retirements (Schedule V)
615	pppabl	Num	8	F19.4	20.4	Personal Property and Casualty Premiums - Automobile (Business Line)
616	ppphbl	Num	8	F19.4	20.4	Personal Property and Casualty Premiums - Homeowners (Business Line)
617	pppobl	Num	8	F19.4	20.4	Personal Property and Casualty Premiums - Other (Business Line)
618	ppptbl	Num	8	F19.4	20.4	Personal Property & Casualty Premiums - Total (Business Line)
619	prc	Num	8	F19.4	20.4	Participation Rights Certificates
620	prca	Num	8	F19.4	20.4	Core Post Retirement Adjustment
621	prcad	Num	8	F19.4	20.4	Core Post Retirement Adjustment Diluted EPS Effect
622	prcaeps	Num	8	F19.4	20.4	Core Post Retirement Adjustment Basic EPS Effect
931	prcc_c	Num	8	F25.12	26.12	Price Close - Annual - Calendar
939	prcc_f	Num	8	F25.12	26.12	Price Close - Annual - Fiscal
932	prch_c	Num	8	F25.12	26.12	Price High - Annual - Calendar
940	prch_f	Num	8	F25.12	26.12	Price High - Annual - Fiscal
933	prcl_c	Num	8	F25.12	26.12	Price Low - Annual - Calendar
941	prcl_f	Num	8	F25.12	26.12	Price Low - Annual - Fiscal
623	prebl	Num	8	F19.4	20.4	Premiums - Reinsurance (Business Line)
624	pri	Num	8	F19.4	20.4	Premiums Written - Reinsurance
625	prodv	Num	8	F19.4	20.4	Proposed Dividends
626	prsho	Num	8	F19.4	20.4	Redeem Pfd Shares Outs (000)
627	prstkc	Num	8	F19.4	20.4	Purchase of Common and Preferred Stock
628	prstkcc	Num	8	F19.4	20.4	Purchase of Common Stock (Cash Flow)
629	prstkpc	Num	8	F19.4	20.4	Purchase of Preferred/Preference Stock (Cash Flow)
630	prvt	Num	8	F19.4	20.4	Policy Reserves - Total (Statutory)
631	pstk	Num	8	F19.4	20.4	Preferred/Preference Stock (Capital) - Total
632	pstkc	Num	8	F19.4	20.4	Preferred Stock - Convertible
633	pstkl	Num	8	F19.4	20.4	Preferred Stock - Liquidating Value
634	pstkn	Num	8	F19.4	20.4	Preferred/Preference Stock - Nonredeemable
635	pstkr	Num	8	F19.4	20.4	Preferred/Preference Stock - Redeemable
636	pstkrv	Num	8	F19.4	20.4	Preferred Stock - Redemption Value
637	ptbl	Num	8	F19.4	20.4	Premiums - Total (Business Line)
638	ptran	Num	8	F19.4	20.4	Principal Transactions
639	pvcl	Num	8	F19.4	20.4	Provision - Credit Losses (Balance Sheet)
640	pvo	Num	8	F19.4	20.4	Provision - Other
641	pvon	Num	8	F19.4	20.4	Provisions - Other (Net)
642	pvpl	Num	8	F19.4	20.4	Provision - Pension Liabilities
643	pvt	Num	8	F19.4	20.4	Provisions - Total
644	pwoi	Num	8	F19.4	20.4	Premiums Written - Other
645	radp	Num	8	F19.4	20.4	Reinsurance Assets - Deposits and Other (Insurance)
646	ragr	Num	8	F19.4	20.4	Resale Agreements
943	rank	Num	8	F9.	11.	Rank - Auditor
647	rari	Num	8	F19.4	20.4	Reinsurance Assets - Receivable/Debtors (Insurance)
648	rati	Num	8	F19.4	20.4	Reinsurance Assets - Total (Insurance)
649	rca	Num	8	F19.4	20.4	Restructuring Costs After-tax
650	rcd	Num	8	F19.4	20.4	Restructuring Costs Diluted EPS Effect
651	rceps	Num	8	F19.4	20.4	Restructuring Costs Basic EPS Effect
652	rcl	Num	8	F19.4	20.4	Reserves for Credit Losses (Assets)
653	rcp	Num	8	F19.4	20.4	Restructuring Costs Pretax
654	rdip	Num	8	F19.4	20.4	In Process R&D Expense
655	rdipa	Num	8	F19.4	20.4	In Process R&D Expense After-tax
656	rdipd	Num	8	F19.4	20.4	In Process R&D Expense Diluted EPS Effect
657	rdipeps	Num	8	F19.4	20.4	In Process R&D Expense Basic EPS Effect
658	rdp	Num	8	F19.4	20.4	Regulatory Deposits
659	re	Num	8	F19.4	20.4	Retained Earnings
660	rea	Num	8	F19.4	20.4	Retained Earnings - Restatement
661	reajo	Num	8	F19.4	20.4	Retained Earnings - Other Adjustments
662	recch	Num	8	F19.4	20.4	Accounts Receivable - Decrease (Increase)
663	recco	Num	8	F19.4	20.4	Receivables - Current - Other
664	recd	Num	8	F19.4	20.4	Receivables - Estimated Doubtful
665	rect	Num	8	F19.4	20.4	Receivables - Total
666	recta	Num	8	F19.4	20.4	Retained Earnings - Cumulative Translation Adjustment
667	rectr	Num	8	F19.4	20.4	Receivables - Trade
668	recub	Num	8	F19.4	20.4	Unbilled Receivables
669	ret	Num	8	F19.4	20.4	Total RE Property
670	reuna	Num	8	F19.4	20.4	Retained Earnings - Unadjusted
671	reunr	Num	8	F19.4	20.4	Retained Earnings - Unrestricted
672	revt	Num	8	F19.4	20.4	Revenue - Total
673	ris	Num	8	F19.4	20.4	Revenue/Income - Sundry
674	rll	Num	8	F19.4	20.4	Reserve for Loan/Asset Losses
675	rlo	Num	8	F19.4	20.4	Reinsurance Liabilities - Other
676	rlp	Num	8	F19.4	20.4	Reinsurance Liabilities - Payables/Creditors
677	rlri	Num	8	F19.4	20.4	Reinsurers'' Liability for Reserves (Insurance)
678	rlt	Num	8	F19.4	20.4	Reinsurance Liabilities - Total
679	rmum	Num	8	F19.4	20.4	Auditors'' Remuneraton
680	rpag	Num	8	F19.4	20.4	Repurchase Agreements
681	rra	Num	8	F19.4	20.4	Reversal - Restructruring/Acquisition Aftertax
682	rrd	Num	8	F19.4	20.4	Reversal - Restructuring/Acq Diluted EPS Effect
683	rreps	Num	8	F19.4	20.4	Reversal - Restructuring/Acq Basic EPS Effect
684	rrp	Num	8	F19.4	20.4	Reversal - Restructruring/Acquisition Pretax
685	rstche	Num	8	20.4	20.4	Restricted Cash & Investments - Current
686	rstchelt	Num	8	20.4	20.4	Long-Term Restricted Cash & Investments
687	rvbci	Num	8	F19.4	20.4	Reserves for Benefits - Life - Claims (Insurance)
688	rvbpi	Num	8	F19.4	20.4	Reserves for Benefits - Life - Policy (Insurance)
689	rvbti	Num	8	F19.4	20.4	Reserves for Benefits - Life - Total (Insurance)
690	rvdo	Num	8	F19.4	20.4	Reserves - Distributable - Other
691	rvdt	Num	8	F19.4	20.4	Reserves - Distributable - Total
692	rveqt	Num	8	F19.4	20.4	Equity Reserves - Total
693	rvlrv	Num	8	F19.4	20.4	Revaluation Reserve
694	rvno	Num	8	F19.4	20.4	Reserves - Nondistributable - Other
695	rvnt	Num	8	F19.4	20.4	Reserves - Nondistributable - Total
696	rvri	Num	8	F19.4	20.4	Reserves - Reinsurance (Insurance)
697	rvsi	Num	8	F19.4	20.4	Reserves - Sundry (Insurance)
698	rvti	Num	8	F19.4	20.4	Reserves - Total
699	rvtxr	Num	8	F19.4	20.4	Reserves - Tax-Regulated
700	rvupi	Num	8	F19.4	20.4	Reserves for Unearned Premiums (Insurance)
701	rvutx	Num	8	F19.4	20.4	Reserves - Untaxed
702	saa	Num	8	F19.4	20.4	Separate Account Assets
703	sal	Num	8	F19.4	20.4	Separate Account Liabilities
704	sale	Num	8	F19.4	20.4	Sales/Turnover (Net)
705	salepfc	Num	8	F19.4	20.4	Pro Forma Net Sales - Current Year
706	salepfp	Num	8	F19.4	20.4	Pro Forma Net Sales - Prior Year
707	sbdc	Num	8	F19.4	20.4	Securities Borrowed and Deposited by Customers
708	sc	Num	8	F19.4	20.4	Securities In Custody
29	scf	Num	8	F6.	6.	Cash Flow Format
709	sco	Num	8	F19.4	20.4	Share Capital - Other
710	scstkc	Num	8	F19.4	20.4	Sale of Common Stock (Cash Flow)
711	secu	Num	8	F19.4	20.4	Securities Gains (Losses) - Unrealized
712	seq	Num	8	F19.4	20.4	Stockholders Equity - Parent
713	seqo	Num	8	F19.4	20.4	Other Stockholders- Equity Adjustments
714	seta	Num	8	F19.4	20.4	Settlement (Litigation/Insurance) After-tax
715	setd	Num	8	F19.4	20.4	Settlement (Litigation/Insurance) Diluted EPS Effect
716	seteps	Num	8	F19.4	20.4	Settlement (Litigation/Insurance) Basic EPS Effect
717	setp	Num	8	F19.4	20.4	Settlement (Litigation/Insurance) Pretax
927	sich	Num	8	F9.	11.	Standard Industrial Classification - Historical
718	siv	Num	8	F19.4	20.4	Sale of Investments
719	spce	Num	8	F19.4	20.4	S&P Core Earnings
720	spced	Num	8	F19.4	20.4	S&P Core Earnings EPS Diluted
721	spceeps	Num	8	F19.4	20.4	S&P Core Earnings EPS Basic
722	spi	Num	8	F19.4	20.4	Special Items
723	spid	Num	8	F19.4	20.4	Other Special Items Diluted EPS Effect
724	spieps	Num	8	F19.4	20.4	Other Special Items Basic EPS Effect
725	spioa	Num	8	F19.4	20.4	Other Special Items After-tax
726	spiop	Num	8	F19.4	20.4	Other Special Items Pretax
727	sppe	Num	8	F19.4	20.4	Sale of Property
728	sppiv	Num	8	F19.4	20.4	Sale of Property, Plant and Equipment and Investments - Gain (Loss)
729	spstkc	Num	8	F19.4	20.4	Sale of Preferred/Preference Stock (Cash Flow)
30	src	Num	8	F6.	6.	Source Document
730	sret	Num	8	F19.4	20.4	Gain/Loss on Sale of Property
731	srt	Num	8	F19.4	20.4	Surplus - Total (Statutory)
732	ssnp	Num	8	F19.4	20.4	Securities Sold Not Yet Purchased
733	sstk	Num	8	F19.4	20.4	Sale of Common and Preferred Stock
31	stalt	Char	2	$2.	$2.	Status Alert
734	stbo	Num	8	F19.4	20.4	Short-Term Borrowings - Other
735	stio	Num	8	F19.4	20.4	Short-Term Investments - Other
736	stkco	Num	8	F19.4	20.4	Stock Compensation Expense
737	stkcpa	Num	8	F19.4	20.4	After-tax stock compensation
738	tdc	Num	8	F19.4	20.4	Deferred Income Taxes - Net (Cash Flow)
739	tdscd	Num	8	F19.4	20.4	Trading/Dealing Account Securities - Corporate Debt
740	tdsce	Num	8	F19.4	20.4	Trading/Dealing Account Securities - Corporate Equity
741	tdsg	Num	8	F19.4	20.4	Trading/Dealing Securities - Gain (Loss)
742	tdslg	Num	8	F19.4	20.4	Trading/Dealing Account Securities - Local Governments
743	tdsmm	Num	8	F19.4	20.4	Trading/Dealing Account Securities - Money Market
744	tdsng	Num	8	F19.4	20.4	Trading/Dealing Account Securities - National Governments
745	tdso	Num	8	F19.4	20.4	Trading/Dealing Account Securities - Other
746	tdss	Num	8	F19.4	20.4	Trading/Dealing Account Securities - Sundry
747	tdst	Num	8	F19.4	20.4	Trading/Dealing Account Securities - Total
748	teq	Num	8	F19.4	20.4	Stockholders Equity - Total
749	tf	Num	8	F19.4	20.4	Trust Fees
750	tfva	Num	8	F19.4	20.4	Total Fair Value Assets
751	tfvce	Num	8	F19.4	20.4	Total Fair Value Changes including Earnings
752	tfvl	Num	8	F19.4	20.4	Total Fair Value Liabilities
8	tic	Char	8	$8.	$8.	Ticker Symbol
753	tie	Num	8	F19.4	20.4	Interest Expense - Total (Financial Services)
754	tii	Num	8	F19.4	20.4	Interest Income - Total (Financial Services)
755	tlcf	Num	8	F19.4	20.4	Tax Loss Carry Forward
756	transa	Num	8	F19.4	20.4	Cumulative Translation Adjustment
757	tsa	Num	8	F19.4	20.4	Treasury Stock (Assets)
758	tsafc	Num	8	F19.4	20.4	Total Sources/Applications of Funds (Cash Flow)
759	tso	Num	8	F19.4	20.4	Treasury Stock - Other Share Capital
760	tstk	Num	8	F19.4	20.4	Treasury Stock - Total (All Capital)
761	tstkc	Num	8	F19.4	20.4	Treasury Stock - Common
762	tstkme	Num	8	F19.4	20.4	Treasury Stock Book Value - Memo Entry
763	tstkn	Num	8	F19.4	20.4	Treasury Stock - Number of Common Shares
764	tstkp	Num	8	F19.4	20.4	Treasury Stock - Preferrred
765	txach	Num	8	F19.4	20.4	Income Taxes - Accrued - Increase/(Decrease)
766	txbco	Num	8	F19.4	20.4	Excess Tax Benefit Stock Options - Cash Flow Operating
767	txbcof	Num	8	F19.4	20.4	Excess Tax Benefit of Stock Options - Cash Flow Financing
768	txc	Num	8	F19.4	20.4	Income Taxes - Current
769	txdb	Num	8	F19.4	20.4	Deferred Taxes (Balance Sheet)
770	txdba	Num	8	F19.4	20.4	Deferred Tax Asset - Long Term
771	txdbca	Num	8	F19.4	20.4	Deferred Tax Asset - Current
772	txdbcl	Num	8	F19.4	20.4	Deferred Tax Liability - Current
773	txdc	Num	8	F19.4	20.4	Deferred Taxes (Cash Flow)
774	txdfed	Num	8	F19.4	20.4	Deferred Taxes-Federal
775	txdfo	Num	8	F19.4	20.4	Deferred Taxes-Foreign
776	txdi	Num	8	F19.4	20.4	Income Taxes - Deferred
777	txditc	Num	8	F19.4	20.4	Deferred Taxes and Investment Tax Credit
778	txds	Num	8	F19.4	20.4	Deferred Taxes-State
779	txeqa	Num	8	F19.4	20.4	Tax - Equivalent Adjustment
780	txeqii	Num	8	F19.4	20.4	Tax - Equivalent Interest Income (Gross)
781	txfed	Num	8	F19.4	20.4	Income Taxes - Federal
782	txfo	Num	8	F19.4	20.4	Income Taxes - Foreign
783	txndb	Num	8	F19.4	20.4	Net Deferred Tax Asset (Liab) - Total
784	txndba	Num	8	F19.4	20.4	Net Deferred Tax Asset
785	txndbl	Num	8	F19.4	20.4	Net Deferred Tax Liability
786	txndbr	Num	8	F19.4	20.4	Deferred Tax Residual
787	txo	Num	8	F19.4	20.4	Income Taxes - Other
788	txp	Num	8	F19.4	20.4	Income Taxes Payable
789	txpd	Num	8	F19.4	20.4	Income Taxes Paid
790	txr	Num	8	F19.4	20.4	Income Tax Refund
791	txs	Num	8	F19.4	20.4	Income Taxes - State
792	txt	Num	8	F19.4	20.4	Income Taxes - Total
793	txtubadjust	Num	8	F19.4	20.4	Other Unrecog Tax Benefit Adj.
794	txtubbegin	Num	8	F19.4	20.4	Unrecog. Tax Benefits - Beg of Year
795	txtubend	Num	8	F19.4	20.4	Unrecog. Tax Benefits - End of Year
796	txtubmax	Num	8	F19.4	20.4	Chg. In Unrecog. Tax Benefits - Max
797	txtubmin	Num	8	F19.4	20.4	Chg. In Unrecog. Tax Benefits - Min
798	txtubposdec	Num	8	F19.4	20.4	Decrease- Current Tax Positions
799	txtubposinc	Num	8	F19.4	20.4	Increase- Current Tax Positions
800	txtubpospdec	Num	8	F19.4	20.4	Decrease- Prior Tax Positions
801	txtubpospinc	Num	8	F19.4	20.4	Increase- Prior Tax Positions
802	txtubsettle	Num	8	F19.4	20.4	Settlements with Tax Authorities
803	txtubsoflimit	Num	8	F19.4	20.4	Lapse of Statute of Limitations
804	txtubtxtr	Num	8	F19.4	20.4	Impact on Effective Tax Rate
805	txtubxintbs	Num	8	F19.4	20.4	Interest & Penalties Accrued - B/S
806	txtubxintis	Num	8	F19.4	20.4	Interest & Penalties Reconized - I/S
807	txva	Num	8	F19.4	20.4	Value Added Taxes
808	txw	Num	8	F19.4	20.4	Excise Taxes
809	uaoloch	Num	8	F19.4	20.4	Other Assets and Liabilities - Net Change (Statement of Cash Flows)
810	uaox	Num	8	F19.4	20.4	Other Assets - Utility
811	uapt	Num	8	F19.4	20.4	Accounts Payable - Utility
812	ucaps	Num	8	F19.4	20.4	Paid in Capital - Other
813	uccons	Num	8	F19.4	20.4	Contributions in Aid of Construction
814	uceq	Num	8	F19.4	20.4	Common Equity Total - Utility
815	ucustad	Num	8	F19.4	20.4	Customer Advances for Construction
816	udcopres	Num	8	F19.4	20.4	Deferred Credits and Operating Reserves - Other
817	udd	Num	8	F19.4	20.4	Debt (Debentures)
818	udfcc	Num	8	F19.4	20.4	Deferred Fuel - Increase (Decrease) (Statement of Cash Flows)
819	udmb	Num	8	F19.4	20.4	Debt (Mortgage Bonds) - Utility
820	udolt	Num	8	F19.4	20.4	Debt (Other Long-Term) - Utility
821	udpco	Num	8	F19.4	20.4	Debt (Pollution Control Obligations) - Utility
822	udpfa	Num	8	F19.4	20.4	Depreciation of Fixed Assets
32	udpl	Char	8	$8.	$8.	Utility - Liberalized Depreciation Code
823	udvp	Num	8	F19.4	20.4	Preferred Dividend Requirements
824	ufretsd	Num	8	F19.4	20.4	Funds for Retirement of Securities and Short-Term Debt (Cash Flow)
825	ugi	Num	8	F19.4	20.4	Gross Income (Income Before Interest Charges)
826	ui	Num	8	F19.4	20.4	Unearned Income
827	uinvt	Num	8	F19.4	20.4	Inventories - Utility
828	ulcm	Num	8	F19.4	20.4	Current Liabilities - Miscellaneous
829	ulco	Num	8	F19.4	20.4	Current Liabilities - Other - Utility
830	uniami	Num	8	F19.4	20.4	Net Income before Extraordinary Items and after Noncontrolling Interest
831	unl	Num	8	F19.4	20.4	Unappropriated Net Loss
832	unnp	Num	8	F19.4	20.4	Unappropriated Net Profit (Stockholders'' Equity)
833	unnpl	Num	8	F19.4	20.4	Unappropriated Net Profit
834	unopinc	Num	8	F19.4	20.4	Nonoperating Income (Net) - Other
835	unwcc	Num	8	F19.4	20.4	Working Capital (Use) - Increase (Decrease) (Cash Flow)
836	uois	Num	8	F19.4	20.4	Other Internal Sources - Net (Cash Flow)
837	uopi	Num	8	F19.4	20.4	Operating Income - Total - Utility
838	uopres	Num	8	F19.4	20.4	Operating Reserves
33	upd	Num	8	F6.	6.	Update Code
839	updvp	Num	8	F19.4	20.4	Preference Dividend Requirements*
840	upmcstk	Num	8	F19.4	20.4	Premium on Common Stock*
841	upmpf	Num	8	F19.4	20.4	Premium on Preferred Stock*
842	upmpfs	Num	8	F19.4	20.4	Premium on Preference Stock*
843	upmsubp	Num	8	F19.4	20.4	Premium on Subsidiary Preferred Stock*
844	upstk	Num	8	F19.4	20.4	Preferred Stock at Carrying Value
845	upstkc	Num	8	F19.4	20.4	Preference Stock at Carrying Value*
846	upstksf	Num	8	F19.4	20.4	Preferred/Preference Stock Sinking Fund Requirement
847	urect	Num	8	F19.4	20.4	Receivables (Net)
848	urectr	Num	8	F19.4	20.4	Accounts Receivable - Trade - Utility
849	urevub	Num	8	F19.4	20.4	Accrued Unbilled Revenues (Balance Sheet)
850	uspi	Num	8	F19.4	20.4	Special Items
851	ustdnc	Num	8	F19.4	20.4	Short-Term Debt - Decrease (Increase) (Cash Flow)
852	usubdvp	Num	8	F19.4	20.4	Subsidiary Preferred Dividends
853	usubpstk	Num	8	F19.4	20.4	Subsidiary Preferred Stock at Carrying Value
854	utfdoc	Num	8	F19.4	20.4	Total Funds From Operations (Cash Flow)
855	utfosc	Num	8	F19.4	20.4	Total Funds from Outside Sources (Cash Flow)
856	utme	Num	8	F19.4	20.4	Maintenance Expense - Total
857	utxfed	Num	8	F19.4	20.4	Current Taxes - Federal (Operating)
858	uwkcapc	Num	8	F19.4	20.4	Working Capital (Source) - Decrease (Increase) (Cash Flow)
859	uxinst	Num	8	F19.4	20.4	Interest On Short-Term Debt - Utility
860	uxintd	Num	8	F19.4	20.4	Interest on Long-Term Debt*
861	vpac	Num	8	F19.4	20.4	Investments - Permanent - Associated Companies
862	vpo	Num	8	F19.4	20.4	Investments - Permanent - Other
863	wcap	Num	8	F19.4	20.4	Working Capital (Balance Sheet)
864	wcapc	Num	8	F19.4	20.4	Working Capital Change - Other - Increase/(Decrease)
865	wcapch	Num	8	F19.4	20.4	Working Capital Change - Total
866	wda	Num	8	F19.4	20.4	Writedowns After-tax
867	wdd	Num	8	F19.4	20.4	Writedowns Diluted EPS Effect
868	wdeps	Num	8	F19.4	20.4	Writedowns Basic EPS Effect
869	wdp	Num	8	F19.4	20.4	Writedowns Pretax
870	xacc	Num	8	F19.4	20.4	Accrued Expenses
871	xad	Num	8	F19.4	20.4	Advertising Expense
872	xago	Num	8	F19.4	20.4	Administrative and General Expense - Other
873	xagt	Num	8	F19.4	20.4	Administrative and General Expense - Total
874	xcom	Num	8	F19.4	20.4	Communications Expense
875	xcomi	Num	8	F19.4	20.4	Commissions Expense (Insurance)
876	xdepl	Num	8	F19.4	20.4	Depletion Expense (Schedule VI)
877	xdp	Num	8	F19.4	20.4	Depreciation Expense (Schedule VI)
878	xdvre	Num	8	F19.4	20.4	Expense - Development (Real Estate)
879	xeqo	Num	8	F19.4	20.4	Equipment and Occupancy Expense
880	xi	Num	8	F19.4	20.4	Extraordinary Items
881	xido	Num	8	F19.4	20.4	Extraordinary Items and Discontinued Operations
882	xidoc	Num	8	F19.4	20.4	Extraordinary Items and Discontinued Operations (Cash Flow)
883	xindb	Num	8	F19.4	20.4	Interest Expense - Deposits - Banks
884	xindc	Num	8	F19.4	20.4	Interest Expense - Deposits - Customer
885	xins	Num	8	F19.4	20.4	Interest Expense - Sundry
886	xinst	Num	8	F19.4	20.4	Interest Expense - Short-Term Borrowings
887	xint	Num	8	F19.4	20.4	Interest and Related Expense - Total
888	xintd	Num	8	F19.4	20.4	Interest Expense - Long-Term Debt
889	xintopt	Num	8	F19.4	20.4	Implied Option Expense
890	xivi	Num	8	F19.4	20.4	Investment Expense (Insurance)
891	xivre	Num	8	F19.4	20.4	Expense - Investment (Real Estate)
892	xlr	Num	8	F19.4	20.4	Staff Expense - Total
893	xnbi	Num	8	F19.4	20.4	Other Insurance Expense
894	xnf	Num	8	F19.4	20.4	Non-Financial Services Expense
895	xnins	Num	8	F19.4	20.4	Other Expense - Noninsurance
896	xnitb	Num	8	F19.4	20.4	Expense - Noninterest - Total (Bank)
897	xobd	Num	8	F19.4	20.4	Expense - Other (Broker/Dealer)
898	xoi	Num	8	F19.4	20.4	Expenses - Other (Insurance)
899	xopr	Num	8	F19.4	20.4	Operating Expenses - Total
900	xoprar	Num	8	F19.4	20.4	Operatings Expenses - As Reported
901	xoptd	Num	8	F19.4	20.4	Implied Option EPS Diluted
902	xopteps	Num	8	F19.4	20.4	Implied Option EPS Basic
903	xore	Num	8	F19.4	20.4	Expense - Other (Real Estate)
904	xpp	Num	8	F19.4	20.4	Prepaid Expenses
905	xpr	Num	8	F19.4	20.4	Pension and Retirement Expense
906	xrd	Num	8	F19.4	20.4	Research and Development Expense
907	xrdp	Num	8	20.4	20.4	Research & Development - Prior
908	xrent	Num	8	F19.4	20.4	Rental Expense
909	xs	Num	8	F19.4	20.4	Expense - Sundry
910	xsga	Num	8	F19.4	20.4	Selling, General and Administrative Expense
911	xstf	Num	8	F19.4	20.4	Staff Expense (Income Account)
912	xstfo	Num	8	F19.4	20.4	Staff Expense - Other
913	xstfws	Num	8	F19.4	20.4	Staff Expense - Wages and Salaries
914	xt	Num	8	F19.4	20.4	Expense - Total
915	xuw	Num	8	F19.4	20.4	Other Underwriting Expenses - Insurance
916	xuwli	Num	8	F19.4	20.4	Underwriting Expense - Life
917	xuwnli	Num	8	F19.4	20.4	Underwriting Expense - Non-Life
918	xuwoi	Num	8	F19.4	20.4	Underwriting Expense - Other
919	xuwrei	Num	8	F19.4	20.4	Underwriting Expense - Reinsurance
920	xuwti	Num	8	F19.4	20.4	Underwriting Expense - Total
Sort Information
Sortedby	gvkey datadate indfmt consol popsrc datafmt
Validated	YES
Character Set	ASCII

</COMPUSTAT>

<CRSP>
The SAS System

The CONTENTS Procedure

Data Set Name	CRSP.MSF	Observations	5037353
Member Type	DATA	Variables	21
Engine	V9	Indexes	0
Created	08/06/2024 20:31:10	Observation Length	168
Last Modified	08/06/2024 20:39:03	Deleted Observations	0
Protection	 	Compressed	NO
Data Set Type	 	Sorted	YES
Label	Monthly Stock - Securities	 	 
Data Representation	SOLARIS_X86_64, LINUX_X86_64, ALPHA_TRU64, LINUX_IA64	 	 
Encoding	utf-8 Unicode (UTF-8)	 	 
Engine/Host Dependent Information
Data Set Page Size	65536
Number of Data Set Pages	12951
First Data Page	1
Max Obs per Page	389
Obs in First Data Page	361
Number of Data Set Repairs	0
Filename	/wrds/crsp/20241107/a_stock/msf.sas7bdat
Release Created	9.0401M7
Host Created	Linux
Inode Number	66584919
Access Permission	rw-------
Owner Name	u1704may
File Size	810MB
File Size (bytes)	848822272
Alphabetic List of Variables and Attributes
#	Variable	Type	Len	Format	Informat	Label
18	ALTPRC	Num	8	12.5	12.5	Price Alternate
20	ALTPRCDT	Num	8	YYMMDDN8.	YYMMDD6.	Alternate Price Date
14	ASK	Num	8	12.5	11.5	Ask
9	ASKHI	Num	8	12.5	12.5	Ask or High Price
13	BID	Num	8	12.5	11.5	Bid
8	BIDLO	Num	8	12.5	12.5	Bid or Low Price
16	CFACPR	Num	8	 	 	Cumulative Factor to Adjust Prices
17	CFACSHR	Num	8	 	 	Cumulative Factor to Adjust Shares/Vol
1	CUSIP	Char	8	8.	8.	CUSIP Header
7	DATE	Num	8	YYMMDDN8.	 	Date of Observation
5	HEXCD	Num	8	2.	2.	Exchange Code Header
6	HSICCD	Num	8	8.	8.	Standard Industrial Classification Code Header
4	ISSUNO	Num	8	8.	8.	Nasdaq Issue Number
3	PERMCO	Num	8	8.	8.	PERMCO
2	PERMNO	Num	8	8.	8.	PERMNO
10	PRC	Num	8	12.5	12.5	Price or Bid/Ask Average
12	RET	Num	8	11.6	11.6	Returns
21	RETX	Num	8	11.6	11.6	Returns without Dividends
15	SHROUT	Num	8	 	 	Shares Outstanding
19	SPREAD	Num	8	11.5	11.5	Spread Between Bid and Ask
11	VOL	Num	8	10.	10.	Volume
Sort Information
Sortedby	PERMNO DATE
Validated	YES
Character Set	ASCII
Sort Option	NODUPKEY

</CRSP>

<FF>
The CONTENTS Procedure

Data Set Name        FF.FACTORS_MONTHLY                                                   Observations          1179
Member Type          DATA                                                                 Variables             9   
Engine               V9                                                                   Indexes               0   
Created              11/06/2024 15:00:07                                                  Observation Length    72  
Last Modified        11/06/2024 15:00:07                                                  Deleted Observations  0   
Protection                                                                                Compressed            NO  
Data Set Type                                                                             Sorted                YES 
Label                Fama-French Monthly Research Factors (Source: Ken French Website)                              
Data Representation  SOLARIS_X86_64, LINUX_X86_64, ALPHA_TRU64, LINUX_IA64                                          
Encoding             utf-8  Unicode (UTF-8)                                                                         


                  Engine/Host Dependent Information

Data Set Page Size          65536                                     
Number of Data Set Pages    2                                         
First Data Page             1                                         
Max Obs per Page            908                                       
Obs in First Data Page      863                                       
Number of Data Set Repairs  0                                         
Filename                    /wrds/ff/20241107/factors_monthly.sas7bdat
Release Created             9.0401M7                                  
Host Created                Linux                                     
Inode Number                66586693                                  
Access Permission           rw-------                                 
Owner Name                  u1704may                                  
File Size                   192KB                                     
File Size (bytes)           196608                                    


                                 Alphabetic List of Variables and Attributes
 
#    Variable    Type    Len    Format       Informat    Label

1    date        Num       8    YYMMDDN8.                Date (SAS). Eventus Format - First day of the Month 
9    dateff      Num       4    YYMMDDN8.    YYMMDD8.    Date (SAS). Last Trading Day of the Month           
4    hml         Num       8    9.6                      High-Minus-Low Return                               
2    mktrf       Num       8    9.6                      Excess Return on the Market                         
7    month       Num       8                             Month                                               
5    rf          Num       8    8.5                      Risk-Free Return Rate (One Month Treasury Bill Rate)
3    smb         Num       8    9.6                      Small-Minus-Big Return                              
8    umd         Num       8    9.6                      Momentum Factor                                     
6    year        Num       8                             Year                   
</FF>

</DATA Structure>


