USE Financial_transactions_db;

CREATE TABLE Financial_transactions
(
    Transaction_id INT PRIMARY KEY,
    Customer_id INT,
    Supplier_name VARCHAR(50),
    Transaction_date DATE,
    Amount DECIMAL(10, 2),
    Currency VARCHAR(10)
);

INSERT INTO Financial_transactions (
    Transaction_id,
    Customer_id,
    Supplier_name,
    Transaction_Date,
    Amount,
    Currency
)
VALUES
(1, 101, 'ABC Corp', '2024-01-15', 1000.00, 'USD'),
(2, 102, 'XYZ Ltd', '2024-01-20', 1500.50, 'EUR'),
(3, 103, 'Global Inc', '2024-02-05', 2000.00, 'GBP'),
(4, 104, 'ABC Corp', '2024-02-10', 500.25, 'USD');

CREATE TABLE Customer_details (
    Customer_id INT PRIMARY KEY,
    Customer_name VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(20)
);

INSERT INTO Customer_details (
    Customer_id,
    Customer_name,
    Email,
    Phone
)
VALUES
(101, 'John Doe', 'john.doe@example.com', '123-456-7890'),
(102, 'Jane Smith', 'jane.smith@example.com', '234-567-8901'),
(103, 'Mike Johnson', 'mike.johnson@example.com', '345-678-9012'),
(104, 'Emily Davis', 'emily.davis@example.com', '456-789-0123');


SELECT * FROM [dbo].[Financial_transactions]
SELECT * FROM [dbo].[Customer_details]

--JOIN
SELECT t.*, c.Customer_name, c.Email AS Customer_email, c.Phone AS Customer_Phone
FROM [Financial_transactions] t
INNER JOIN [Customer_details] c
ON t.Customer_id = c.Customer_id;