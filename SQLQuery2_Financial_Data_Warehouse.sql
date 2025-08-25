USE Financial_data_warehouse
GO

/****** Object:  Table [dbo].[Financial_transactions]    Script Date: 8/21/2025 9:58:12 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Financial_transactions](
	[Transaction_id] [int] NOT NULL,
	[Customer_id] [int] NULL,
	[Supplier_name] [varchar](50) NULL,
	[Transaction_date] [date] NULL,
	[Amount] [decimal](10, 2) NULL,
	[Currency] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Transaction_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

-- ADD Columns in the table
ALTER TABLE  [dbo].[Financial_transactions] 
ADD
	[Customer_name] [varchar](50) NULL,
	[Customer_email] [varchar](100) NULL,
	[Customer_phone] [varchar](20) NULL;



--		TRUNCATE TABLE [dbo].[Financial_transactions]

CREATE TABLE Exchange_rates
(
	From_currency VARCHAR(10),
	To_currency VARCHAR(10),
	Exchange_rate FLOAT,
	Effective_date DATE
);

CREATE TABLE Suppliers
(
	Supplier_id INT,
	Supplier_name VARCHAR(100),
	Contact_name VARCHAR(100),
	Phone VARCHAR(25)
);

-- Add anoter column 'Amount_USD' for amount in USD
ALTER TABLE [dbo].[Financial_transactions]
ADD Amount_USD FLOAT;

--ALTER TABLE [dbo].[Financial_transactions] DROP COLUMN Amount_USD;

ALTER TABLE Financial_transactions
ADD Supplier_contact_name VARCHAR(100) NULL,
	Supplier_phones VARCHAR(25) NULL



SELECT * FROM Financial_transactions

SELECT * FROM Exchange_rates

SELECT * FROM Suppliers