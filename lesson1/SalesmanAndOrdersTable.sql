CREATE TABLE IF NOT EXISTS Salesman( 
   SalesmanID TEXT PRIMARY KEY ,
   Name TEXT ,
   City TEXT ,
   Commission REAL 
) ;
INSERT OR IGNORE INTO Salesman(SalesmanID , Name , City ,Commission) VALUES
('6001' , 'James Hoog' , 'New York' , 0.15) ,
('6002' , 'Nail Knite' , 'Paris' , 0.12) ,
('6003' , 'Pit Alex' , 'London' , 0.10) ,
('6004' , 'Mc Lyon' , 'Paris' , 0.12) ,
('6005' , 'Paul Adam' , 'Rome' , 0.10) ,
('6006' , 'Allen Adam' , 'Rome' , 0.10) ,
('6007' , 'James Adam' , 'Athens' , 0.15) ; 

SELECT * FROM Salesman ;

CREATE TABLE IF NOT EXISTS Orders(
 ordNo TEXT PRIMARY KEY ,
 purchAmount REAL ,
 ordDate TEXT ,
 customerId TEXT ,
 SalesmanId TEXT ) ;
INSERT OR IGNORE INTO Orders(ordNo , purchAmount , ordDate , customerId , SalesmanId) VALUES
('70001' , 150.5 , '2012-10-05' , '3005' , '6002') ,
('70009' , 270.65 , '2012-09-10' , '3001' , '6005') ,
('70002' , 65.26 , '2012-10-06' , '3002' , '6001') ,
('70004' , 110.5 , '2012-08-17' , '3009' , '6003') ,
('70007' , 948.5 , '2012-09-10' , '3004' , '6006') ,
('70005' , 2400.6 , '2012-07-27' , '3007' , '6004') ,
('70008' , 5760.0 , '2012-09-10' , '3001' , '6007') ;

SELECT * FROM Orders ;

SELECT name , Commission FROM  Salesman;

