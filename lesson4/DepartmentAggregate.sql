CREATE TABLE IF NOT EXISTS DEPARTMENT(
  EMPLOYEEID TEXT ,
  NAME TEXT ,
  DEPARTMENTID TEXT ,
  MANAGERID TEXT ,
  SALARY REAL );
INSERT INTO DEPARTMENT (EMPLOYEEID , NAME , DEPARTMENTID , MANAGERID , SALARY) VALUES
('E001' , 'John Doe' , 'D001' , 'M001' , 50000) ,
('E002' , 'Jane Smith' , 'D002' , 'M002' , 60000) ,
('E003' , 'Emily Davis' , 'D003' , 'M003' , 55000) ,
('E004' , 'Michael Brown' , 'D002' , 'M002' , 45000) ,
('E005' , 'Sarah Wilson' , 'D001' , 'M001' , 70000) ,
('E006' , 'David Lee' , 'D003' , 'M003' , 48000) ,
('E067' , 'Alice Johnson' , 'D001' , 'M001' , 52000) ,
('E570' , 'Bob Smith' , 'D002' , 'M002' , 62000) ,
('E670' , 'Charlie Brown' , 'D003' , '103' , 53000) ;

SELECT departmentid AS "Department Code" ,
COUNT(*) AS "No of Employees" 
FROM DEPARTMENT GROUP BY departmentid ;

SELECT departmentid , SUM(salary)
FROM DEPARTMENT GROUP BY departmentid ;

SELECT departmentid AS "Department Code",
COUNT(*) AS "No of Employees ",
SUM(salary) AS "Total Salary "
FROM DEPARTMENT GROUP BY departmentid ;

SELECT departmentid AS "Department Code ",
  SUM(salary) AS "Total Salary "
  FROM DEPARTMENT  GROUP BY departmentid;

SELECT departmentid AS "Department Code ",
 SUM(salary) AS "Total Salary "
 FROM DEPARTMENT WHERE MANAGERID = '103' GROUP BY departmentid ;

SELECT departmentid, COUNT(*) AS 'No. of Employees'
FROM DEPARTMENT GROUP BY departmentid
HAVING COUNT(*) > 2 ;

