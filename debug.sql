-- Recreate tables
DROP TABLE company CASCADE;
DROP TABLE income_statement;

CREATE TABLE Company(
	ID  				serial PRIMARY KEY,
	NAME VARCHAR (100)  UNIQUE NOT NULL,
	URL VARCHAR (200)   NOT NULL
);
CREATE TABLE Income_Statement (
	STOCK_SYMBOL VARCHAR (8) NOT NULL,
    COMPANY_NAME VARCHAR(100) REFERENCES Company(NAME),
	DATE DATE NOT NULL,
	REVENUES BIGINT,
	REVENUE_GROWTH DECIMAL (5, 4),
	COST_OF_REVENUE BIGINT,
	GROSS_PROFIT BIGINT,
	RESEARCH_AND_DEVELOPMENT_EXPENSE BIGINT,
	SELLING_GENERAL_AND_ADMINISTRATIVE_EXPENSE BIGINT,
	OPERATING_EXPENSES BIGINT,
	OPERATING_INCOME BIGINT,
	INTEREST_EXPENSE BIGINT,
	EARNINGS_BEFORE_TAX BIGINT,
	INCOME_TAX_EXPENSE BIGINT,
	NET_INCOME_TO_NONCONTROLLING_INTERESTS BIGINT,
	NET_INCOME_FROM_DISCONTINUED_OPERATIONS BIGINT,
	NET_INCOME BIGINT,
	PREFERRED_DIVIDENDS_INCOME_STATEMENT_IMPACT BIGINT,
	NET_INCOME_COMMON_STOCK BIGINT,
	EARNINGS_PER_BASIC_SHARE DECIMAL (5, 2),
	EARNINGS_PER_DILUTED_SHARE DECIMAL (5, 2),
	WEIGHTED_AVERAGE_SHARES BIGINT,
	WEIGHTED_AVERAGE_SHARES_DILUTED BIGINT,
	DIVIDENDS_PER_BASIC_COMMON_SHARE DECIMAL (5, 2),
	GROSS_MARGIN DECIMAL (5, 4),
	EBITDA_MARGIN DECIMAL (5, 3),
	EBIT_MARGIN DECIMAL (5, 4),
	PROFIT_MARGIN DECIMAL (5, 2),
	FREE_CASH_FLOW_MARGIN DECIMAL (5, 4),
	EBITDA BIGINT,
	EBIT BIGINT,
	CONSOLIDATED_INCOME BIGINT,
	UNIQUE (STOCK_SYMBOL, DATE),
	PRIMARY KEY (STOCK_SYMBOL, DATE)
);


-- Load data
INSERT INTO company (name, url)
VALUES
  ('Amazon', 'www.amazon.com'),
  ('Apple', 'www.apple.com'),
  ('Google', 'www.google.com'),
  ('IBM', 'www.ibm.com'),
  ('Intel', 'www.intel.com'),
  ('Microsoft', 'www.microsoft.com');

  COPY Income_Statement(stock_symbol,company_name,date,revenues,revenue_growth,cost_of_revenue,gross_profit,research_and_development_expense,selling_general_and_administrative_expense,operating_expenses,operating_income,interest_expense,earnings_before_tax,income_tax_expense,net_income_to_noncontrolling_interests,net_income_from_discontinued_operations,net_income,preferred_dividends_income_statement_impact,net_income_common_stock,earnings_per_basic_share,earnings_per_diluted_share,weighted_average_shares,weighted_average_shares_diluted,dividends_per_basic_common_share,gross_margin,ebitda_margin,ebit_margin,profit_margin,free_cash_flow_margin,ebitda,ebit,consolidated_income)
FROM
	'/Users/alstonhsu/projects/financial_reports/amazon.csv'
DELIMITER ',' CSV HEADER;

COPY Income_Statement(stock_symbol,company_name,date,revenues,revenue_growth,cost_of_revenue,gross_profit,research_and_development_expense,selling_general_and_administrative_expense,operating_expenses,operating_income,interest_expense,earnings_before_tax,income_tax_expense,net_income_to_noncontrolling_interests,net_income_from_discontinued_operations,net_income,preferred_dividends_income_statement_impact,net_income_common_stock,earnings_per_basic_share,earnings_per_diluted_share,weighted_average_shares,weighted_average_shares_diluted,dividends_per_basic_common_share,gross_margin,ebitda_margin,ebit_margin,profit_margin,free_cash_flow_margin,ebitda,ebit,consolidated_income)
FROM
	'/Users/alstonhsu/projects/financial_reports/apple.csv'
DELIMITER ',' CSV HEADER;

COPY Income_Statement(stock_symbol,company_name,date,revenues,revenue_growth,cost_of_revenue,gross_profit,research_and_development_expense,selling_general_and_administrative_expense,operating_expenses,operating_income,interest_expense,earnings_before_tax,income_tax_expense,net_income_to_noncontrolling_interests,net_income_from_discontinued_operations,net_income,preferred_dividends_income_statement_impact,net_income_common_stock,earnings_per_basic_share,earnings_per_diluted_share,weighted_average_shares,weighted_average_shares_diluted,dividends_per_basic_common_share,gross_margin,ebitda_margin,ebit_margin,profit_margin,free_cash_flow_margin,ebitda,ebit,consolidated_income)
FROM
	'/Users/alstonhsu/projects/financial_reports/google.csv'
DELIMITER ',' CSV HEADER;

COPY Income_Statement(stock_symbol,company_name,date,revenues,revenue_growth,cost_of_revenue,gross_profit,research_and_development_expense,selling_general_and_administrative_expense,operating_expenses,operating_income,interest_expense,earnings_before_tax,income_tax_expense,net_income_to_noncontrolling_interests,net_income_from_discontinued_operations,net_income,preferred_dividends_income_statement_impact,net_income_common_stock,earnings_per_basic_share,earnings_per_diluted_share,weighted_average_shares,weighted_average_shares_diluted,dividends_per_basic_common_share,gross_margin,ebitda_margin,ebit_margin,profit_margin,free_cash_flow_margin,ebitda,ebit,consolidated_income)
FROM
	'/Users/alstonhsu/projects/financial_reports/ibm.csv'
DELIMITER ',' CSV HEADER;

COPY Income_Statement(stock_symbol,company_name,date,revenues,revenue_growth,cost_of_revenue,gross_profit,research_and_development_expense,selling_general_and_administrative_expense,operating_expenses,operating_income,interest_expense,earnings_before_tax,income_tax_expense,net_income_to_noncontrolling_interests,net_income_from_discontinued_operations,net_income,preferred_dividends_income_statement_impact,net_income_common_stock,earnings_per_basic_share,earnings_per_diluted_share,weighted_average_shares,weighted_average_shares_diluted,dividends_per_basic_common_share,gross_margin,ebitda_margin,ebit_margin,profit_margin,free_cash_flow_margin,ebitda,ebit,consolidated_income)
FROM
	'/Users/alstonhsu/projects/financial_reports/intel.csv'
DELIMITER ',' CSV HEADER;

COPY Income_Statement(stock_symbol,company_name,date,revenues,revenue_growth,cost_of_revenue,gross_profit,research_and_development_expense,selling_general_and_administrative_expense,operating_expenses,operating_income,interest_expense,earnings_before_tax,income_tax_expense,net_income_to_noncontrolling_interests,net_income_from_discontinued_operations,net_income,preferred_dividends_income_statement_impact,net_income_common_stock,earnings_per_basic_share,earnings_per_diluted_share,weighted_average_shares,weighted_average_shares_diluted,dividends_per_basic_common_share,gross_margin,ebitda_margin,ebit_margin,profit_margin,free_cash_flow_margin,ebitda,ebit,consolidated_income)
FROM
	'/Users/alstonhsu/projects/financial_reports/microsoft.csv'
DELIMITER ',' CSV HEADER;

-- Copy to clipboard
copy (select * from company, income_statement where company.name = income_statement.company_name) to '/Users/alstonhsu/projects/financial_reports/combined.csv' with (FORMAT CSV, HEADER);
