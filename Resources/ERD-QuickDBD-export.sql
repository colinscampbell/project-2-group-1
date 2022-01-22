-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "fundamentals_v2" (
    "ticker" VARCHAR(10)   NOT NULL,
    "company_name" VARCHAR(55)   NOT NULL,
    "industry" VARCHAR(255)   NOT NULL,
    "sub_industry" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_Ticker" PRIMARY KEY (
        "ticker"
     )
);

CREATE TABLE "Split_Adjusted_Prices" (
    "ticker" VARCHAR(10)   NOT NULL,
    "Volume" INT   NOT NULL,
    "Close" MONEY   NOT NULL,
    "Open" MONEY   NOT NULL,
    "High" MONEY   NOT NULL,
    "Low" MONEY   NOT NULL,
    CONSTRAINT "pk_Split_Adjusted_Prices" PRIMARY KEY (
        "ticker"
     )
);

CREATE TABLE "Fundamentals" (
    "ticker" VARCHAR(10)   NOT NULL,
    "Cost_of_Revenue" MONEY   NOT NULL,
    "EBIT" MONEY   NOT NULL,
    "EBITDA" MONEY   NOT NULL,
    "Net_Cash_Flow" MONEY   NOT NULL,
    "Operating_Income" MONEY   NOT NULL,
    CONSTRAINT "pk_Fundamentals" PRIMARY KEY (
        "ticker"
     )
);

