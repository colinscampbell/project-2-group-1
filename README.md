# project-2-group-1

Team Members:
* Colin Campbell
* Omar
* Hamilton Cha
* Prina Thaker

Group Focus:
* Colin Campbell - Fundamentals / PPT
* Omar - Fundamentals
* Hamilton Cha - Security Data
* Prina Thaker - Prices

USING 

Idea: Financial Analysis Database




Consolidate Data Available at New York Stock Exchange | Kaggle, consisting of 4 datasets:
* Prices
* Split Adjusted Prices
* Securities
* Fundamentals

Located here https://www.kaggle.com/dgawlik/nyse?select=securities.csv

Extract: Load the 3 tables below into a Pandas Dataframe
* Split Adjusted Prices
   * Extract Close Price
   * Extract Volume
   * Extract Open
   * Extract High
   * Extract Low
* Security Data
   * Extract Ticker
   * Extract Industry
   * Extract Sub Industry
   * Extract Company Name
* Fundamentals
   * Extract:
   * Cost of Revenue
   * EBIT
   * EBITDA
   * Net Cash Flow
   * Operating Income


Transform:
* Prices:
   * Check if the data is not null
   * Calculate Intraday Range (Open - Close)
   * Calculate Daily Volatility (High - Low)
   * Find 12 months rolling average of open price
   * Find 12 months rolling average of close price

* Security Data:
   * Ticker + Industry + Sub Industry + Company Name
   * Becomes 3 tables:
   * Ticker, Industry ID, Sub Industry ID
   * Industry ID, Industry
   * Sub Industry ID, Sub Industry
* Fundamentals:
   * New Table for each fundamental,
   * Key = Ticker Symbol
   * Data Point = Assorted Metrics, for example
   * Balance Sheet:
      * Assets
      * Liabilities
   * Income Statement
      * Revenue
      * Operating Costs
      * Earnings
   * Key Ratios
      * Price/Earnings
      * Price/Book
      * EPS
* Fundamentals to Prices Bridge: Maybe, if time allows
   * Example: AAPL Fundamentals 2012-12-31, 2013-12-31, 2014-12-31, 2015-12-31
   * KEY: AAPL:2012-12-31


Load:
* Tables reflecting the above
* POSTGRES Table


Challenge / Extra Credit = Make it update daily
