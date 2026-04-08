DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Items;
CREATE TABLE IF NOT EXISTS Customers(
Name TEXT ,
ID TEXT PRIMARY KEY ,
PurchasedItem TEXT ,
TotalPrice REAL ,
Time TEXT ,
PaymentMethod TEXT ,
DateOfVisit TEXT,
Year INTEGER );

INSERT INTO Customers(Name , ID , PurchasedItem , TotalPrice , Time , PaymentMethod , DateOfVisit , Year) VALUES
('Alice' , 'P001' , 'Shoes' , 120.00 , 'Morning' , 'Card' , '2020-05-15' , 2020),
('Bob' , 'P002' , 'Shirt' , 80.00 , 'Afternoon' , 'Bitcoin' , '2021-06-20' , 2021),
('Charlie' , 'P003' , 'Pants' , 150.00 , 'Evening' , 'Card' , '2020-07-10' , 2020),
('David' , 'P004' , 'Shoes' , 200.00 , 'Morning' , 'Cash' , '2019-08-05' , 2019),
('Eve' , 'P005' , 'Hat' , 50.00, 'Afternoon' ,'Bitcoin', '2020-09-25', 2020),
('Frank', 'P006', 'Shoes', 130.00, 'Morning', 'Card', '2021-10-30', 2021),
('Grace', 'P007', 'Shirt', 90.00, 'Evening', 'Cash', '2019-11-15', 2019),
('Heidi', 'P008', 'Pants', 160.00, 'Afternoon', 'Bitcoin', '2020-12-20', 2020),
('James', 'P009', 'Shoes', 110.00, 'Morning', 'Card', '2021-01-10', 2021),
('Judy', 'P010', 'Hat', 60.00, 'Evening', 'Cash', '2019-02-05', 2019),
('Karl', 'P011', 'Shirt', 85.00, 'Afternoon', 'Bitcoin', '2020-03-25', 2020),
('Leo', 'P012', 'Pants', 140.00, 'Morning', 'Card', '2021-04-30', 2021),
('Mallory', 'P013', 'Shoes', 125.00, 'Evening', 'Cash', '2019-05-15', 2019),
('Nina', 'P014', 'Hat', 55.00, 'Afternoon', 'Bitcoin', '2020-06-20', 2020),
('Oscar', 'P015', 'Shirt', 95.00, 'Morning', 'Card', '2021-07-10', 2021),
('Peggy', 'P016', 'Pants', 170.00, 'Evening', 'Cash', '2019-08-05', 2019),
('Quentin', 'P017', 'Shoes', 135.00, 'Afternoon','Bitcoin' , '2020-09-25' , 2020),
('Ruth' , 'P018' , 'Hat' , 65.00 , 'Morning' , 'Card' , '2021-10-30' , 2021),
('Steve' , 'P019' , 'Shirt' , 100.00 , 'Evening' , 'Cash' , '2019-11-15' , 2019),
('Trudy' , 'P020' , 'Pants' , 180.00 , 'Afternoon' ,'Bitcoin' ,'2020-12-20' , 2020),
('Uma' , 'P021' , 'Shoes' , 115.00 , 'Morning' , 'Card' , '2021-01-10' , 2021),
('Victor' , 'P022' , 'Hat' , 70.00 , 'Evening' , 'Cash' , '2019-02-05' , 2019),
('Walter' , 'P023' , 'Shirt' , 105.00, 'Afternoon', 'Bitcoin', '2020-03-25', 2020),
('Xavier' , 'P024' , 'Pants' , 190.00, 'Morning', 'Card', '2021-04-30', 2021),
('Yvonne' , 'P025' , 'Shoes' , 120.00, 'Evening', 'Cash', '2019-05-15', 2019),
('Zara' , 'P026' , 'Hat' , 75.00, 'Afternoon', 'Bitcoin', '2020-06-20', 2020),
('Aaron' , 'P027' , 'Shirt' , 110.00, 'Morning', 'Card', '2021-07-10', 2021),
('Betty' , 'P028' , 'Pants' , 160.00, 'Evening', 'Cash', '2019-08-05', 2019),
('Carl' , 'P029' , 'Shoes' , 130.00, 'Afternoon', 'Bitcoin', '2020-09-25', 2020),
('Diana' , 'P030' , 'Hat' , 80.00, 'Morning', 'Card', '2021-10-30', 2021);

CREATE TABLE IF NOT EXISTS Items(
Name TEXT ,
Price REAL ,
QuantityLevel TEXT ,
OnDemandRating REAL ,
Category TEXT );

INSERT INTO Items(Name , Price , QuantityLevel , OnDemandRating , Category) VALUES
('Shoes' , 120.00 , 'Low' , 4.5 , 'Clothing'),
('Shirt' , 80.00 , 'Medium' , 4.0 , 'Clothing'),
('Pants' , 150.00 , 'Very High' , 4.8 , 'Clothing'),
('Hat' , 50.00, 'Low', 4.2, 'Accessories'),
('Socks' , 20.00, 'Medium', 3.8, 'Clothing'),
('Belt' , 30.00, 'High', 4.6, 'Accessories'),
('Jacket' , 200.00, 'Low', 4.9, 'Clothing'),
('Gloves' , 25.00, 'Medium', 4.1, 'Accessories'),
('Scarf' , 40.00, 'High', 4.7, 'Accessories'),
('Sunglasses' , 150.00, 'Low', 4.3, 'Accessories'),
('Watch' , 300.00, 'Medium', 4.9, 'Accessories'),
('Backpack' , 80.00, 'Very High', 4.5, 'Accessories'),
('Wallet' , 60.00, 'Low', 4.0, 'Accessories'),
('Tie' , 35.00, 'Medium', 3.9, 'Clothing'),
('Dress' , 180.00, 'Very High', 4.8, 'Clothing'),
('Skirt' , 90.00, 'Low', 4.2, 'Clothing'),
('Blouse' , 70.00, 'Medium', 4.1, 'Clothing'),
('Coat' , 250.00, 'Very High', 4.9, 'Clothing'),
('Sweater' , 110.00, 'Low', 4.3, 'Clothing');
SELECT Name AS "Customers Starting with B, Z, J" , PurchasedItem , TotalPrice
FROM Customers
WHERE Name LIKE 'B%' OR Name LIKE 'Z%' OR Name LIKE 'J%' ;

SELECT Name AS "Customers who spent more than 100 dollars" , PurchasedItem , TotalPrice
FROM Customers
WHERE TotalPrice > 100.00 ;

SELECT Name AS "Customers who bought shoes" , PurchasedItem , TotalPrice
FROM Customers
WHERE PurchasedItem = 'Shoes' ;

SELECT Name AS "Customers who visited in the morning" , PurchasedItem , TotalPrice , Time
FROM Customers
WHERE Time = 'Morning' ;

SELECT Name AS "Customers who paid with Card" , PurchasedItem , TotalPrice , PaymentMethod
FROM Customers
WHERE PaymentMethod = 'Card' ;

    SELECT Name AS "Customers who paid with Bitcoin" , PurchasedItem , TotalPrice , PaymentMethod
    FROM Customers
    WHERE PaymentMethod = 'Bitcoin' ;

SELECT Name AS "Customers who visited in 2020" , Name , PurchasedItem , TotalPrice , Time , Year
FROM Customers
WHERE Year = 2020 ;


SELECT Name AS "Most Items on Demand" , OnDemandRating AS "Demand Rate" ,Category , Price
FROM Items 
WHERE OnDemandRating >= 4
ORDER BY OnDemandRating DESC;

SELECT Name AS "Accessories" , Price , QuantityLevel , OnDemandRating
FROM Items
WHERE Category = 'Accessories' ;

SELECT Name AS "Low in Stock Items" , Price , QuantityLevel , OnDemandRating
FROM Items
WHERE QuantityLevel = 'Low' ;

SELECT Name AS "High in Stock Items" , Price , QuantityLevel , OnDemandRating
FROM Items
WHERE QuantityLevel = 'High' OR QuantityLevel = 'Very High' ;








