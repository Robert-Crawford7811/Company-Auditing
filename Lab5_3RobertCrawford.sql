-- Insert into customers table
INSERT INTO ADMIN.Customers (CustomerID, CustomerLastName, CustomerFirstName, CustomerEmail, CustomerPhone, CustomerCellPhone) VALUES (14,'Fisher', 'Sam', 'Sam.Fisher@example.com', '514-258-8975', '415-852-5789' );
INSERT INTO ADMIN.Customers (CustomerID, CustomerLastName, CustomerFirstName, CustomerEmail, CustomerPhone, CustomerCellPhone) VALUES (15, 'Gordon', 'Freeman', 'Gordon.Freeman@example.com', '874-639-1123', '478-936-3221');
INSERT INTO ADMIN.Customers (CustomerID, CustomerLastName, CustomerFirstName, CustomerEmail, CustomerPhone, CustomerCellPhone) VALUES (16, 'Aran', 'Samus', 'Samus.Aran@example.com', '301-773-4551', '103-377-1554');
INSERT INTO ADMIN.Customers (CustomerID, CustomerLastName, CustomerFirstName, CustomerEmail, CustomerPhone, CustomerCellPhone) VALUES (17, 'Goth', 'Bella', 'Bella.Goth@example.com', '223-355-1108', '322-996-7845');
INSERT INTO ADMIN.Customers (CustomerID, CustomerLastName, CustomerFirstName, CustomerEmail, CustomerPhone, CustomerCellPhone) VALUES (18, 'Price', 'Chloe', 'Chloe.Price@example.com', '240-558-9663', '240-855-3669');

-- Insert into Sales2019 Table
INSERT INTO ADMIN.Sales2019(CustomerID, TransactionDate, SalesAmount, ProfitAmount) VALUES (14, TO_DATE('2019-07-11','YYYY-MM-DD'), 3000.00, 1000.00);
INSERT INTO ADMIN.Sales2019(CustomerID, TransactionDate, SalesAmount, ProfitAmount) VALUES (15, TO_DATE('2019-02-27','YYYY-MM-DD'), 6000.00, 2000.00);
INSERT INTO ADMIN.Sales2019(CustomerID, TransactionDate, SalesAmount, ProfitAmount) VALUES (16, TO_DATE('2019-05-24','YYYY-MM-DD'), 4000.00, 1000.00);
INSERT INTO ADMIN.Sales2019(CustomerID, TransactionDate, SalesAmount, ProfitAmount) VALUES (17, TO_DATE('2019-09-30','YYYY-MM-DD'), 1500.00, 500.00);
INSERT INTO ADMIN.Sales2019(CustomerID, TransactionDate, SalesAmount, ProfitAmount) VALUES (18, TO_DATE('2019-07-04','YYYY-MM-DD'), 2400.00, 800.00);

--Insert into Projections2020 Table
INSERT INTO ADMIN.Projections2020 (CustomerID, QuarterlyPurchaseAmount, QuarterlyProfitAmount, Confidence) VALUES (14, 3500.00, 1200.00, 0.85);
INSERT INTO ADMIN.Projections2020 (CustomerID, QuarterlyPurchaseAmount, QuarterlyProfitAmount, Confidence) VALUES (15, 2500.00, 1200.00, 0.85);
INSERT INTO ADMIN.Projections2020 (CustomerID, QuarterlyPurchaseAmount, QuarterlyProfitAmount, Confidence) VALUES (16, 1000.00, 500.00, 0.90);
INSERT INTO ADMIN.Projections2020 (CustomerID, QuarterlyPurchaseAmount, QuarterlyProfitAmount, Confidence) VALUES (17, 2500.00, 800.00, 0.95);
INSERT INTO ADMIN.Projections2020 (CustomerID, QuarterlyPurchaseAmount, QuarterlyProfitAmount, Confidence) VALUES (18, 4500.00, 2000.00, 0.85);

-- Update Customers table
UPDATE ADMIN.Customers Set CustomerLastname = 'Aran' WHERE CustomerID = 17;
UPDATE ADMIN.Customers Set CustomerLastname = 'Price' WHERE CustomerID = 14;
UPDATE ADMIN.Customers Set CustomerLastname = 'Fisher' WHERE CustomerID = 16;

--Update Sales 2019 Table
UPDATE ADMIN.Sales2019 set SalesAmount = 3500.00 WHERE CustomerID = 14;
UPDATE ADMIN.Sales2019 set SalesAmount = 4500.00 WHERE CustomerID = 16;
UPDATE ADMIN.Sales2019 set SalesAmount = 6500.00 WHERE CustomerID = 15;

-- Update Projections2020 Table
UPDATE ADMIN.Projections2020 set QuarterlyProfitAmount = 2000.00 WHERE CustomerID = 14;
UPDATE ADMIN.Projections2020 set QuarterlyProfitAmount = 1500.00 WHERE CustomerID = 16;
UPDATE ADMIN.Projections2020 set QuarterlyPurchaseAmount = 3000.00 WHERE CustomerID = 15;

-- Delete from Projections2020
DELETE FROM ADMIN.Projections2020 WHERE CustomerID = 17;
DELETE FROM ADMIN.Projections2020 WHERE CustomerID = 18;

-- Delete data from Sales2019
DELETE FROM ADMIN.Sales2019 WHERE CustomerID = 17;
DELETE FROM ADMIN.Sales2019 WHERE CustomerID = 18;

-- Delete data from Customers
DELETE FROM ADMIN.Customers WHERE CustomerID = 17;
DELETE FROM ADMIN.Customers WHERE CustomerID = 18;

-- Query for the Customer Table
SELECT * FROM ADMIN.Customers;

-- Query for the Sales2019 Table
SELECT * FROM ADMIN.Sales2019;

-- Query for the Projections2020 Table
SELECT * FROM ADMIN.Projections2020;

--Commit Changes
COMMIT