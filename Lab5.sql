-- Drop the tables
DROP TABLE Customers cascade constraints;
DROP TABLE Projections2020 cascade constraints;
DROP TABLE Sales2019 cascade constraints;

-- Drop User
DROP USER Lab5_1RobertCrawford;
DROP USER Lab5_2RobertCrawford;
DROP USER Lab5_3RobertCrawford;

DROP ROLE R5ROBERTCRAWFORD;

-- Create Customer Table
CREATE TABLE Customers(
    CustomerID INTEGER PRIMARY KEY,
    CustomerLastName VARCHAR2(40) NOT NULL,
    CustomerFirstName VARCHAR2(40) NOT NULL,
    CustomerEmail VARCHAR2(80) NOT NULL,
    CustomerPhone VARCHAR2(12),
    CustomerCellPhone VARCHAR2(12)
);
-- Insert 3 sample data entries into the Customer Table
INSERT INTO Customers (CustomerID, CustomerLastName, CustomerFirstName, CustomerEmail, CustomerPhone, CustomerCellPhone) VALUES (1, 'Parker', 'Peter', 'Peter.Parker@example.com', '123-456-7890', '987-123-4568');
INSERT INTO Customers (CustomerID, CustomerLastName, CustomerFirstName, CustomerEmail, CustomerPhone, CustomerCellPhone) VALUES (2, 'Tony', 'Stark', 'Tony.Stark@example.com', '213-789-4561', '456-789-7512');
INSERT INTO Customers (CustomerID, CustomerLastName, CustomerFirstName, CustomerEmail, CustomerPhone, CustomerCellPhone) VALUES (3, 'Banner', 'Bruce', 'Bruce.Banner@example.com', '741-123-4890', '301-745-9812');

-- Create Sales2019 Table
CREATE TABLE Sales2019(
    CustomerID INT REFERENCES Customers(CustomerID),
    TransactionDate DATE NOT NULL,
    SalesAmount NUMBER(10,2) NOT NULL,
    ProfitAmount NUMBER(10,2) NOT NULL,
    PRIMARY KEY(CustomerID, TransactionDate)
);
-- Insert 3 sample data entries into the Sales2019 Table
INSERT INTO Sales2019(CustomerID, TransactionDate, SalesAmount, ProfitAmount) VALUES (1, TO_DATE('2019-05-15','YYYY-MM-DD'), 1000.00, 500.00);
INSERT INTO Sales2019(CustomerID, TransactionDate, SalesAmount, ProfitAmount) VALUES (2, TO_DATE('2019-04-15','YYYY-MM-DD'), 2000.00, 1000.00);
INSERT INTO Sales2019(CustomerID, TransactionDate, SalesAmount, ProfitAmount) VALUES (3, TO_DATE('2019-06-17','YYYY-MM-DD'), 3000.00, 1500.00);

-- Create Projections2020 Table
CREATE TABLE Projections2020(
     CustomerID INT REFERENCES Customers(CustomerID),
     QuarterlyPurchaseAmount NUMBER(10,2) NOT NULL,
     QuarterlyProfitAmount NUMBER(10,2) NOT NULL,
     Confidence NUMBER(4,2) NOT NULL
);
-- Insert 3 sample data entries into the Projections2020 Table
INSERT INTO Projections2020 (CustomerID, QuarterlyPurchaseAmount, QuarterlyProfitAmount, Confidence) VALUES (1, 2500.00, 1200.00, 0.85);
INSERT INTO Projections2020 (CustomerID, QuarterlyPurchaseAmount, QuarterlyProfitAmount, Confidence) VALUES (2, 3000.00, 2400.00, 0.90);
INSERT INTO Projections2020 (CustomerID, QuarterlyPurchaseAmount, QuarterlyProfitAmount, Confidence) VALUES (3, 3500.00, 3600.00, 0.95);

--Create the role
CREATE ROLE R5RobertCrawford;

--Grant the role Privileges
GRANT CREATE SESSION TO R5RobertCrawford;
GRANT SELECT, INSERT, UPDATE, DELETE ON Customers TO R5RobertCrawford;
GRANT SELECT, INSERT, UPDATE, DELETE ON Sales2019 TO R5RobertCrawford;
GRANT SELECT, INSERT, UPDATE, DELETE ON Projections2020 TO R5RobertCrawford;

--Create user accounts
CREATE USER Lab5_1RobertCrawford 
IDENTIFIED BY Password01
DEFAULT TABLESPACE Users
TEMPORARY TABLESPACE temp
QUOTA 30M ON Users;

CREATE USER Lab5_2RobertCrawford 
IDENTIFIED BY Password02
DEFAULT TABLESPACE Users
TEMPORARY TABLESPACE temp
QUOTA 30M ON Users;

CREATE USER Lab5_3RobertCrawford 
IDENTIFIED BY Password03
DEFAULT TABLESPACE Users
TEMPORARY TABLESPACE temp
QUOTA 30M ON Users;;

-- Grant the role to the users
GRANT R5RobertCrawford TO Lab5_1RobertCrawford;
GRANT R5RobertCrawford TO Lab5_2RobertCrawford;
GRANT R5RobertCrawford TO Lab5_3RobertCrawford;

--Enable Auditing
AUDIT SELECT, INSERT, UPDATE, DELETE ON Sales2019;
AUDIT SELECT, INSERT, UPDATE, DELETE ON Projections2020;
AUDIT SELECT, INSERT, UPDATE, DELETE ON Customers;

-- Query for Audit Trail
SELECT * FROM DBA_AUDIT_TRAIL
ORDER BY TIMESTAMP DESC;

--Commit Changes
COMMIT