CREATE TABLE IF NOT EXISTS CUSTOMERS(
GRADEVALUE INTEGER ,
CUSTOMERID TEXT PRIMARY KEY ,
NAME TEXT ,
CUSTOMER TEXT ,
STATE TEXT );

INSERT OR IGNORE INTO CUSTOMERS(GRADEVALUE , CUSTOMERID , NAME , CUSTOMER , STATE) VALUES
(100 , 'C001' , 'John Doe' , 'ABC Corporation' , 'New York' ) ,
(90 , 'C002' , 'Jane Smith' , 'XYZ Inc.' , 'New York' ) ,
(110 , 'C003' , 'Emily Davis' , 'DEF Ltd.' , 'New York' ) ,
(60 , 'C004' , 'Michael Brown' , 'GHI Co.' , 'Florida' ) ,
(110 , 'C005' , 'Sarah Wilson' , 'JKL Enterprises' , 'New York' ) ,
(90 , 'C006' , 'David Lee' , 'MNO Group' , 'Washington' ) ,
(80 , 'C007' , 'Laura Taylor' , 'PQR Solutions' , 'Virginia') ,
(70 , 'C006' , 'David Lee' , 'MNO Group' , 'Washington' ) ,
(100 , 'C007' , 'Laura Taylor' , 'PQR Solutions' , 'Virginia') ;

SELECT * FROM CUSTOMERS WHERE GRADEVALUE = 100 OR STATE = 'New York' ;
SELECT * FROM CUSTOMERS WHERE GRADEVALUE >= 100 AND STATE = 'New York' ;