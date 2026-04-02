DROP TABLE IF EXISTS Salesman;
DROP TABLE IF EXISTS Customer;
DROP TABLE IF EXISTS Orders;
CREATE TABLE IF NOT EXISTS Salesman(
SalesmanID TEXT PRIMARY KEY ,
SalesmanName TEXT ,
SalesmanCity TEXT ,
SalesmanCommission TEXT
);

INSERT INTO Salesman(SalesmanID , SalesmanName , SalesmanCity , SalesmanCommission) VALUES
('S001' , 'Smith' , 'New York' , '0.15'),
('S002' , 'Johnson' , 'Los Angeles' , '0.12'),
('S003' , 'Williams' , 'Chicago' , '0.10'),
('S004' , 'Jones' , 'Houston' , '0.08'),
('S005' , 'Brown' , 'Phoenix' , '0.20');


CREATE TABLE IF NOT EXISTS Customer(
CustomerID TEXT ,
CustomerName TEXT PRIMARY KEY ,
CustomerCity TEXT ,
CustomerGrade TEXT ,
SalesmanID TEXT );

INSERT INTO Customer(CustomerID ,CustomerName , CustomerCity , CustomerGrade , SalesmanID) VALUES
('C001' , 'Alice' , 'New York' , 'A' , 'S001'),
('C002' , 'Bob' , 'Los Angeles' , 'B' , 'S002'),
('C003' , 'Charlie' , 'Houston' , 'A' , 'S003'),
('C004' , 'David' , 'Chicago' , 'C' , 'S004'),
('C005' , 'Eve' , 'Phoenix' , 'B' , 'S005');

CREATE TABLE IF NOT EXISTS Orders(
OrderNo TEXT PRIMARY KEY ,
PurchaseAmount TEXT ,
OrderDate TEXT ,
CustomerID TEXT ,
SalesmanID TEXT );

INSERT INTO Orders(OrderNo , PurchaseAmount , OrderDate , CustomerID , SalesmanID) VALUES
('O001' , '1000' , '2024-01-15' , 'C001' , 'S001'),
('O002' , '1500' , '2024-02-20' , 'C002' , 'S002'),
('O003' , '2000' , '2024-03-10' , 'C003' , 'S003'),
('O004' , '2500' , '2024-04-05' , 'C004' , 'S004'),
('O005' , '3000' , '2024-05-25' , 'C005' , 'S005');



SELECT Customer.CustomerName , Salesman.SalesmanName , Salesman.SalesmanCity
FROM Customer
JOIN Salesman ON Customer.CustomerCity = Salesman.SalesmanCity ;

SELECT Customer.CustomerName , Salesman.SalesmanName ,Salesman.SalesmanID
FROM Customer
JOIN Salesman ON  Customer.SalesmanID = Salesman.SalesmanID ;

SELECT Orders.OrderNo , Customer.CustomerName , Orders.CustomerID ,Orders.SalesmanID
FROM Orders
JOIN  Customer ON Orders.CustomerID = Customer.CustomerID
JOIN Salesman ON Orders.SalesmanID = Salesman.SalesmanID 
WHERE Customer.CustomerCity <> Salesman.SalesmanCity ;

SELECT Orders.OrderNo , Customer.CustomerName 
FROM Orders
JOIN Customer ON  Orders.CustomerID = Customer.CustomerID ;

SELECT Customer.CustomerName AS "Customer" , Customer.CustomerGrade AS "Grade"
FROM Orders
JOIN Salesman ON  Orders.SalesmanID = Salesman.SalesmanID
JOIN Customer ON Orders.CustomerID = Customer.CustomerID
WHERE Customer.CustomerGrade IS NOT NULL ;

SELECT Customer.CustomerName AS "Customer" ,
Customer.CustomerCity AS "City" ,
Salesman.SalesmanName AS "Salesman" ,
Salesman.SalesmanCommission 
FROM Customer
JOIN Salesman ON Customer.SalesmanID = Salesman.SalesmanID
WHERE Salesman.SalesmanCommission  BETWEEN 0.12 AND 0.14;

SELECT Orders.OrderNo ,Customer.CustomerName ,Salesman.SalesmanCommission AS "Commission%",
Orders.PurchaseAmount * Salesman.SalesmanCommission AS "Commission"
FROM Orders
JOIN Salesman ON Orders.SalesmanID = Salesman.SalesmanID
JOIN Customer ON  Orders.CustomerID = Customer.CustomerID
WHERE Customer.CustomerGrade >= 200 ;

SELECT *
FROM Customer
JOIN Orders ON Customer.CustomerID = Orders.CustomerID
WHERE Orders.OrderDate = '2024-03-10' ;