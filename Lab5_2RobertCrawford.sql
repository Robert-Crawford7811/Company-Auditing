-- Insert into customers table
INSERT INTO ADMIN.Customers (CustomerID, CustomerLastName, CustomerFirstName, CustomerEmail, CustomerPhone, CustomerCellPhone) VALUES (9, 'Wayne', 'Robert', 'Robert.Wayne@example.com', '123-456-7890', '987-123-4568');
INSERT INTO ADMIN.Customers (CustomerID, CustomerLastName, CustomerFirstName, CustomerEmail, CustomerPhone, CustomerCellPhone) VALUES (10, 'Kent', 'Diana', 'Clark.Kent@example.com', '123-789-4560', '482-123-7890');
INSERT INTO ADMIN.Customers (CustomerID, CustomerLastName, CustomerFirstName, CustomerEmail, CustomerPhone, CustomerCellPhone) VALUES (11, 'Prince', 'Barry', 'Barry.Prince@example.com', '456-589-1235', '351-123-8907');
INSERT INTO ADMIN.Customers (CustomerID, CustomerLastName, CustomerFirstName, CustomerEmail, CustomerPhone, CustomerCellPhone) VALUES (12, 'Allen', 'John', 'Allen.John@example.com', '741-589-1249', '351-489-8706');
INSERT INTO ADMIN.Customers (CustomerID, CustomerLastName, CustomerFirstName, CustomerEmail, CustomerPhone, CustomerCellPhone) VALUES (13, 'Stewart', 'John', 'John.Stewart@example.com', '789-123-7841', '490-785-1204');

-- Insert into Sales2019 Table
INSERT INTO ADMIN.Sales2019(CustomerID, TransactionDate, SalesAmount, ProfitAmount) VALUES (9, TO_DATE('2019-01-11','YYYY-MM-DD'), 2000.00, 1000.00);
INSERT INTO ADMIN.Sales2019(CustomerID, TransactionDate, SalesAmount, ProfitAmount) VALUES (10, TO_DATE('2019-02-24','YYYY-MM-DD'), 5000.00, 2000.00);
INSERT INTO ADMIN.Sales2019(CustomerID, TransactionDate, SalesAmount, ProfitAmount) VALUES (11, TO_DATE('2019-03-16','YYYY-MM-DD'), 3000.00, 1000.00);
INSERT INTO ADMIN.Sales2019(CustomerID, TransactionDate, SalesAmount, ProfitAmount) VALUES (12, TO_DATE('2019-06-26','YYYY-MM-DD'), 6000.00, 1000.00);
INSERT INTO ADMIN.Sales2019(CustomerID, TransactionDate, SalesAmount, ProfitAmount) VALUES (13, TO_DATE('2019-12-14','YYYY-MM-DD'), 9000.00, 1000.00);

--Insert into Projections2020 Table
INSERT INTO ADMIN.Projections2020 (CustomerID, QuarterlyPurchaseAmount, QuarterlyProfitAmount, Confidence) VALUES (9, 3500.00, 1200.00, 0.85);
INSERT INTO ADMIN.Projections2020 (CustomerID, QuarterlyPurchaseAmount, QuarterlyProfitAmount, Confidence) VALUES (10, 2500.00, 1500.00, 0.90);
INSERT INTO ADMIN.Projections2020 (CustomerID, QuarterlyPurchaseAmount, QuarterlyProfitAmount, Confidence) VALUES (11, 3500.00, 2000.00, 1.00);
INSERT INTO ADMIN.Projections2020 (CustomerID, QuarterlyPurchaseAmount, QuarterlyProfitAmount, Confidence) VALUES (12, 4500.00, 2500.00, 0.85);
INSERT INTO ADMIN.Projections2020 (CustomerID, QuarterlyPurchaseAmount, QuarterlyProfitAmount, Confidence) VALUES (13, 5500.00, 1200.00, 0.85);

-- Update Customers table
UPDATE ADMIN.Customers Set CustomerLastname = 'Kyle' WHERE CustomerID = 9;
UPDATE ADMIN.Customers Set CustomerLastname = 'Kent' WHERE CustomerID = 12;
UPDATE ADMIN.Customers Set CustomerLastname = 'Lane' WHERE CustomerID = 11;

--Update Sales 2019 Table
UPDATE ADMIN.Sales2019 set SalesAmount = 3000.00 WHERE CustomerID = 9;
UPDATE ADMIN.Sales2019 set SalesAmount = 4000.00 WHERE CustomerID = 12;
UPDATE ADMIN.Sales2019 set SalesAmount = 6500.00 WHERE CustomerID = 11;

-- Update Projections2020 Table
UPDATE ADMIN.Projections2020 set QuarterlyProfitAmount = 1500.00 WHERE CustomerID = 9;
UPDATE ADMIN.Projections2020 set QuarterlyProfitAmount = 2000.00 WHERE CustomerID = 11;
UPDATE ADMIN.Projections2020 set QuarterlyPurchaseAmount = 2500.00 WHERE CustomerID = 12;

-- Delete from Projections2020
DELETE FROM ADMIN.Projections2020 WHERE CustomerID = 12;
DELETE FROM ADMIN.Projections2020 WHERE CustomerID = 13;

-- Delete data from Sales2019
DELETE FROM ADMIN.Sales2019 WHERE CustomerID = 12;
DELETE FROM ADMIN.Sales2019 WHERE CustomerID = 13;

-- Delete data from Customers
DELETE FROM ADMIN.Customers WHERE CustomerID = 12;
DELETE FROM ADMIN.Customers WHERE CustomerID = 13;

-- Query for the Customer Table
SELECT * FROM ADMIN.Customers;

-- Query for the Sales2019 Table
SELECT * FROM ADMIN.Sales2019;

-- Query for the Projections2020 Table
SELECT * FROM ADMIN.Projections2020;

--Commit Changes
COMMIT