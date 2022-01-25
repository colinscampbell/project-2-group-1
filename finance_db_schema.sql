-- This script was generated by a beta version of the ERD tool in pgAdmin 4.
-- Please log an issue at https://redmine.postgresql.org/projects/pgadmin4/issues/new if you find any bugs, including reproduction steps.
BEGIN;


CREATE TABLE IF NOT EXISTS public.balance_sheet
(
    "Ticker" text COLLATE pg_catalog."default",
    "Period Ending" text COLLATE pg_catalog."default",
    "Receivables" double precision,
    "Payables" double precision,
    "Cash" double precision,
    "Fixed Assets" double precision,
    "Goodwill" double precision,
    "Inventory" double precision,
    "Other Assets" double precision
);

CREATE TABLE IF NOT EXISTS public.financial_ratios
(
    "Ticker" text COLLATE pg_catalog."default",
    "Period Ending" text COLLATE pg_catalog."default",
    "Acid" double precision,
    "Current Ratio" double precision,
    "EPS" double precision,
    "Profit Margin" double precision,
    "ROE" double precision
);

CREATE TABLE IF NOT EXISTS public.fundamentals
(
    "Ticker" text COLLATE pg_catalog."default" NOT NULL,
    "Company Name" text COLLATE pg_catalog."default",
    "Industry" text COLLATE pg_catalog."default",
    "Sub Industry" text COLLATE pg_catalog."default",
    PRIMARY KEY ("Ticker")
);

CREATE TABLE IF NOT EXISTS public.income_statement
(
    "Ticker" text COLLATE pg_catalog."default",
    "Period Ending" text COLLATE pg_catalog."default",
    "Revenue" double precision,
    "COGS" double precision,
    "Depreciation" double precision,
    "Tax" double precision,
    "Operating Income" double precision,
    "SG&A" double precision
);

CREATE TABLE IF NOT EXISTS public.split_adjusted_prices
(
    "Date" text COLLATE pg_catalog."default",
    "Ticker" text COLLATE pg_catalog."default",
    "Open" double precision,
    "Close" double precision,
    "Low" double precision,
    "High" double precision,
    "Volume" double precision,
    "Intraday Range" double precision,
    "Intraday Volatility" double precision,
    "Yearly Rolling Average Open Price" double precision,
    "Yearly Rolling Average Close Price" double precision
);

ALTER TABLE IF EXISTS public.balance_sheet
    ADD FOREIGN KEY ("Period Ending")
    REFERENCES public.split_adjusted_prices ("Date") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.financial_ratios
    ADD FOREIGN KEY ("Period Ending")
    REFERENCES public.split_adjusted_prices ("Date") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.fundamentals
    ADD FOREIGN KEY ("Ticker")
    REFERENCES public.balance_sheet ("Ticker") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.fundamentals
    ADD FOREIGN KEY ("Ticker")
    REFERENCES public.financial_ratios ("Ticker") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.fundamentals
    ADD FOREIGN KEY ("Ticker")
    REFERENCES public.income_statement ("Ticker") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.fundamentals
    ADD FOREIGN KEY ("Ticker")
    REFERENCES public.split_adjusted_prices ("Ticker") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;


ALTER TABLE IF EXISTS public.income_statement
    ADD FOREIGN KEY ("Period Ending")
    REFERENCES public.split_adjusted_prices ("Date") MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE NO ACTION
    NOT VALID;

END;