-- Creating Customers table according to the given constraints
CREATE TABLE Customers(
CustomerID INT PRIMARY KEY, 
CustomerName VARCHAR(20), 
Email VARCHAR(20) UNIQUE,
Age TINYINT CHECK (Age BETWEEN 18 AND 30), 
Phone VARCHAR(15))

-- Inserting values into the Customer table
INSERT INTO Customers(CustomerID, CustomerName,Email,Age,Phone) VALUES
(101,'Rahul','rahul1999@gmail.com',22,'1234567890'),
(102,'Vipul','vipul0000@gmail.com',23,'8908908902'),
(108,'Rakesh','rakesh3288@gmail.com',30,'9999999992'),
(210,'Sandhya','sandhya@gmail.com',18,'9111111110')

-- Display Customers table data
SELECT * FROM customers

-- Creating Orders table with some constraints and CustomerID as foreign key
CREATE TABLE Orders(
OrderID INT, 
OrderName VARCHAR(20),
OrderStatus VARCHAR(10) CHECK (OrderStatus IN ('Recieved','Pending','Aborted')),
CustomerID INT REFERENCES Customers(CustomerID)) 

-- Inserting values into the Orders table
INSERT INTO Orders(OrderID, OrderName,OrderStatus,CustomerID) VALUES
(6636,'Iphone','Pending',108),
(4656,'Bag','Recieved',102),
(3288,'Laptop','Aborted',null),
(1007,'Cosmetics','Pending',null)

-- Display Orders table data
SELECT * FROM Orders

-- To check whether our primary key and foreign key are working fine
SELECT * FROM Customers e,Orders o 
WHERE e.customerID = o.CustomerID