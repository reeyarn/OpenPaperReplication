To help you understand how this SAS code calculates a firm's valuation based on Ohlson’s residual income model (RIM), let’s break it down step-by-step, focusing on the core mechanism within the code and tying it to the theoretical framework of Ohlson’s RIM. Ohlson’s model fundamentally posits that a firm’s value is the sum of its book value of equity plus the present value of expected future residual incomes, where residual income is earnings above the cost of equity capital. The code implements this at a firm-monthly level and then aggregates it for broader analysis, as inspired by Curtis (2012). Here's the explanation:

---

### **Ohlson’s Residual Income Model (RIM) - Theoretical Basis**
Ohlson’s RIM expresses firm value \( V_t \) as:
\[ V_t = B_t + \sum_{i=1}^{\infty} \frac{E_t[RI_{t+i}]}{(1 + r)^i} \]
Where:
- \( B_t \) = Book value of equity at time \( t \) (in the code: `ceq`).
- \( RI_{t+i} \) = Residual income at time \( t+i \), defined as \( NI_{t+i} - r \cdot B_{t+i-1} \), where \( NI_{t+i} \) is net income (in the code: `ib`), and \( r \) is the cost of equity capital.
- \( E_t[\cdot] \) = Expectation operator based on information at \( t \).
- \( r \) = Discount rate (cost of equity).

For practical estimation, Ohlson assumes a perpetuity or simplified growth model. In Curtis (2012), the fundamental value \( Vf(x) \) is calculated assuming residual income persists indefinitely with a constant growth rate \( g \), leading to:
\[ Vf(x)_t = B_t + \frac{RI_{t+1}}{r - g} \]
Where:
- \( RI_{t+1} = NI_{t+1} - r \cdot B_t \)
- \( g \) = Long-term growth rate of residual income.

This perpetuity assumption simplifies the infinite sum into a closed-form expression, commonly used in empirical applications of RIM.

---

### **How the SAS Code Implements This**

#### **Step 1: Data Preparation (Steps 1-4 in Code)**
The code first gathers and aligns the necessary inputs:
- **Compustat Data**: Extracts book value (`ceq`), earnings (`ib`), and dividends (`dvc`) from `comp.funda` for 1977–2008, ensuring positive book value and non-missing earnings. It expands this annual data to monthly frequency based on a 4-month reporting lag (e.g., fiscal year-end data available 4 months later).
- **CRSP Data**: Pulls monthly stock prices (`prc`) and shares outstanding (`shrout`) to compute market capitalization (`market_cap`), filtered for common stocks on major exchanges.
- **Merging**: Links CRSP and Compustat via the CCM linking table to create a unified dataset (`firm_monthly_data`) with both market and accounting data.

#### **Step 2: Discount Rate (Step 5 in Code)**
The discount rate \( r_t \) is calculated monthly as:
\[ r_t = \text{Treasury Yield (3-year)} + \text{Equity Premium} \]
- **Treasury Yield**: Placeholder data (4% constant) is used due to missing real data (needs external source like FRED’s DGS3 series). In practice, this should vary monthly.
- **Equity Premium**: Set at 6% (`&equity_premium = 0.06`), a standard assumption reflecting additional return required over the risk-free rate.
- In the code: `r_t = (t3yr_yield / 100) + &equity_premium`.

#### **Step 3: Residual Income Calculation (Step 6 in Code)**
For each firm-month, residual income (\( RI \)) is computed as:
\[ RI = NI - r_t \cdot B \]
- **\( NI \)**: Uses lagged annual earnings (`ib`) as a proxy for next period’s expected earnings.
- **\( B \)**: Uses lagged book value (`ceq`) from the prior fiscal year-end.
- **Code Implementation**: `ri = ib - r_t * ceq`.

This assumes earnings from the most recent fiscal year (available after the reporting lag) are a reasonable forecast for the next period’s earnings, a simplification common in RIM applications.

#### **Step 4: Fundamental Value \( Vf(x) \) Calculation (Step 6 in Code)**
The fundamental value \( Vf(x) \) is calculated using the perpetuity formula:
\[ Vf(x) = B + \frac{RI}{r - g} \]
- **\( B \)**: Current book value (`ceq`).
- **\( RI \)**: Residual income from above.
- **\( r \)**: Discount rate (`r_t`).
- **\( g \)**: Perpetual growth rate, set at 3% (`&growth_rate = 0.03`).
- **Code Implementation**:
  ```sas
  if r_t > &growth_rate then do;
     vf_x = ceq + ri / (r_t - &growth_rate);
  end;
  ```
- **Adjustments**:
  - If \( r_t \leq g \), the formula is invalid (division by zero or negative), so \( Vf(x) \) is set to \( B \) (`ceq`) as a fallback.
  - If \( RI \leq 0 \), \( Vf(x) \) is also set to \( B \), per Curtis (2012), reflecting that negative residual income doesn’t add value beyond book value: `if ri <= 0 then vf_x = ceq`.
  - A further safeguard ensures \( Vf(x) \) isn’t missing if inputs are available: `if vf_x = . and ceq ne . and ib ne . and r_t ne . then vf_x = ceq`.

This \( Vf(x) \) represents the intrinsic value of the firm based on Ohlson’s RIM, contrasting with the market value (`market_cap`).

#### **Step 5: Aggregation and Analysis (Steps 7-9 in Code)**
- **Aggregation**: Sums \( Vf(x) \), \( market_cap \), \( ceq \), etc., across firms each month to create aggregate indices (`aggregate_monthly_raw`).
- **Log Ratios**: Computes the log fundamental-to-price ratio (\( \log(Vf(x)/P) = \log_vfx - \log_p \)) to assess valuation misalignment, a key focus of Curtis (2012).
- **Stationarity Tests**: Uses Phillips-Perron tests to examine whether \( \log(Vf(x)/P) \) is stationary (cointegrated), testing the hypothesis that fundamental value and market price move together over time.

---

### **Key Code Snippet (Step 6)**
```sas
data firm_monthly_vf;
    merge firm_monthly_data(in=a) treasury_yields(in=b);
    by month_date;
    if a and b;
    r_t = (t3yr_yield / 100) + &equity_premium;  /* Discount rate */
    ri = ib - r_t * ceq;                         /* Residual income */
    if r_t > &growth_rate then do;
       vf_x = ceq + ri / (r_t - &growth_rate);   /* Fundamental value */
    end;
    else do;
       vf_x = ceq;                               /* Fallback if r <= g */
    end;
    if ri <= 0 then vf_x = ceq;                  /* Floor at book value */
    if vf_x = . and ceq ne . and ib ne . and r_t ne . then vf_x = ceq; /* Ensure non-missing */
run;
```

---

### **How It Ties to Ohlson’s RIM**
- **Book Value (\( B_t \))**: Directly uses `ceq`, aligning with Ohlson’s starting point.
- **Residual Income (\( RI \))**: Approximates future \( RI \) with current earnings minus a capital charge, consistent with Ohlson’s definition.
- **Perpetuity**: Assumes \( RI \) grows at \( g \) forever, simplifying the infinite sum into \( RI / (r - g) \), a common empirical shortcut.
- **Practical Adjustments**: The floors (e.g., \( Vf(x) = B \) if \( RI \leq 0 \)) reflect empirical realism, ensuring valuations remain sensible when residual income is negative or the model assumptions break down.

---

### **Limitations in the Code**
1. **Treasury Yield Placeholder**: Without real 3-year Treasury data, \( r_t \) is inaccurate, skewing \( Vf(x) \).
2. **Earnings Forecast**: Uses lagged `ib` as \( NI_{t+1} \), ignoring analyst forecasts or dynamic information (unlike Ohlson’s full model with linear information dynamics).
3. **Constant \( g \)**: Assumes a uniform 3% growth rate, whereas Ohlson’s model could allow \( g \) to vary based on firm or industry dynamics.

---

### **Conclusion**
The SAS code calculates firm valuation (\( Vf(x) \)) using Ohlson’s RIM by:
1. Starting with book value (`ceq`).
2. Adding the capitalized value of residual income (`ri / (r - g)`), where \( RI \) is earnings (`ib`) minus the cost of equity (\( r_t \cdot ceq \)).
3. Applying practical floors to handle negative \( RI \) or invalid \( r - g \).

This \( Vf(x) \) is then aggregated and compared to market value to explore speculative pricing, aligning with Curtis (2012)’s objectives. For accurate results, replace the placeholder Treasury yield with real data!