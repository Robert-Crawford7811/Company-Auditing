-- Insert into customers table
INSERT INTO ADMIN.Customers (CustomerID, CustomerLastName, CustomerFirstName, CustomerEmail, CustomerPhone, CustomerCellPhone) VALUES (4, 'Wayne', 'Bruce', 'Bruce.Wayne@example.com', '123-456-7890', '987-123-4568');
INSERT INTO ADMIN.Customers (CustomerID, CustomerLastName, CustomerFirstName, CustomerEmail, CustomerPhone, CustomerCellPhone) VALUES (5, 'Kent', 'Clark', 'Clark.Kent@example.com', '123-789-4560', '482-123-7890');
INSERT INTO ADMIN.Customers (CustomerID, CustomerLastName, CustomerFirstName, CustomerEmail, CustomerPhone, CustomerCellPhone) VALUES (6, 'Prince', 'Diana', 'Diana.Prince@example.com', '456-589-1235', '351-123-8907');
INSERT INTO ADMIN.Customers (CustomerID, CustomerLastName, CustomerFirstName, CustomerEmail, CustomerPhone, CustomerCellPhone) VALUES (7, 'Allen', 'Barry', 'Allen.Barry@example.com', '741-589-1249', '351-489-8706');
INSERT INTO ADMIN.Customers (CustomerID, CustomerLastName, CustomerFirstName, CustomerEmail, CustomerPhone, CustomerCellPhone) VALUES (8, 'Stewart', 'John', 'John.Stewart@example.com', '789-123-7841', '490-785-1204');

-- Insert into Sales2019 Table
INSERT INTO ADMIN.Sales2019(CustomerID, TransactionDate, SalesAmount, ProfitAmount) VALUES (4, TO_DATE('2019-01-11','YYYY-MM-DD'), 3000.00, 1000.00);
INSERT INTO ADMIN.Sales2019(CustomerID, TransactionDate, SalesAmount, ProfitAmount) VALUES (5, TO_DATE('2019-02-24','YYYY-MM-DD'), 6000.00, 2000.00);
INSERT INTO ADMIN.Sales2019(CustomerID, TransactionDate, SalesAmount, ProfitAmount) VALUES (6, TO_DATE('2019-03-16','YYYY-MM-DD'), 4000.00, 1000.00);
INSERT INTO ADMIN.Sales2019(CustomerID, TransactionDate, SalesAmount, ProfitAmount) VALUES (7, TO_DATE('2019-06-26','YYYY-MM-DD'), 5000.00, 1000.00);
INSERT INTO ADMIN.Sales2019(CustomerID, TransactionDate, SalesAmount, ProfitAmount) VALUES (8, TO_DATE('2019-12-14','YYYY-MM-DD'), 8000.00, 1000.00);

--Insert into Projections2020 Table
INSERT INTO ADMIN.Projections2020 (CustomerID, QuarterlyPurchaseAmount, QuarterlyProfitAmount, Confidence) VALUES (4, 2500.00, 1200.00, 0.85);
INSERT INTO ADMIN.Projections2020 (CustomerID, QuarterlyPurchaseAmount, QuarterlyProfitAmount, Confidence) VALUES (5, 3500.00, 1500.00, 0.90);
INSERT INTO ADMIN.Projections2020 (CustomerID, QuarterlyPurchaseAmount, QuarterlyProfitAmount, Confidence) VALUES (6, 2500.00, 2000.00, 1.00);
INSERT INTO ADMIN.Projections2020 (CustomerID, QuarterlyPurchaseAmount, QuarterlyProfitAmount, Confidence) VALUES (7, 3500.00, 2500.00, 0.85);
INSERT INTO ADMIN.Projections2020 (CustomerID, QuarterlyPurchaseAmount, QuarterlyProfitAmount, Confidence) VALUES (8, 2500.00, 1200.00, 0.85);

-- Update Customers table
UPDATE ADMIN.Customers Set CustomerLastname = 'Kyle' WHERE CustomerID = 4;
UPDATE ADMIN.Customers Set CustomerLastname = 'Kent' WHERE CustomerID = 5;
UPDATE ADMIN.Customers Set CustomerLastname = 'Lane' WHERE CustomerID = 6;

--Update Sales 2019 Table
UPDATE ADMIN.Sales2019 set SalesAmount = 3000.00 WHERE CustomerID = 4;
UPDATE ADMIN.Sales2019 set SalesAmount = 4000.00 WHERE CustomerID = 6;
UPDATE ADMIN.Sales2019 set SalesAmount = 6500.00 WHERE CustomerID = 5;

-- Update Projections2020 Table
UPDATE ADMIN.Projections2020 set QuarterlyProfitAmount = 1500.00 WHERE CustomerID = 4;
UPDATE ADMIN.Projections2020 set QuarterlyProfitAmount = 2000.00 WHERE CustomerID = 6;
UPDATE ADMIN.Projections2020 set QuarterlyPurchaseAmount = 2500.00 WHERE CustomerID = 5;

-- Delete from Projections2020
DELETE FROM ADMIN.Projections2020 WHERE CustomerID = 7;
DELETE FROM ADMIN.Projections2020 WHERE CustomerID = 8;

-- Delete data from Sales2019
DELETE FROM ADMIN.Sales2019 WHERE CustomerID = 7;
DELETE FROM ADMIN.Sales2019 WHERE CustomerID = 8;

-- Delete data from Customers
DELETE FROM ADMIN.Customers WHERE CustomerID = 7;
DELETE FROM ADMIN.Customers WHERE CustomerID = 8;

-- Query for the Customer Table
SELECT * FROM ADMIN.Customers;

-- Query for the Sales2019 Table
SELECT * FROM ADMIN.Sales2019;

-- Query for the Projections2020 Table
SELECT * FROM ADMIN.Projections2020;

--Commit Changes
COMMIT