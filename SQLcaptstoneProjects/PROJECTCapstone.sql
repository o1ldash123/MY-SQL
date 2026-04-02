DROP TABLE IF EXISTS Employees;
CREATE TABLE IF NOT EXISTS Employees( 
EmployeeNo TEXT ,
EmployeeName TEXT ,
EmployeeCity TEXT ,
EmployeeSalary TEXT ,
EmployeeDepartment TEXT ,
EmployeeAge TEXT );

INSERT INTO Employees(EmployeeNo , EmployeeName , EmployeeCity , EmployeeSalary , EmployeeDepartment , EmployeeAge) VALUES
('E001' , 'John Doe' , 'New York' , '50000' , 'Sales' , '30'),
('E002' , 'Jane Smith' , 'Los Angeles' , '60000' , 'Marketing' , ''),
('E003' , 'Michael Johnson' , 'Chicago' , '55000' , 'IT' , '35'),
('E004' , 'Emily Davis' , 'Houston' , '65000' , 'Finance' , '32'),
('E005' , 'David Wilson' , 'Phoenix' , '70000' , 'HR' , '40'),
('E006' , 'Sarah Brown' , 'New York' , '48000' , 'Sales' , ''),
('E007' , 'James Taylor' , 'Los Angeles' , '62000' , 'Marketing' , '29'),
('E008' , 'Robert Anderson' , 'Chicago' , '53000' , 'IT' , '33'),
('E009' , 'Linda Martinez' , 'Houston' , '67000' , 'Finance' , '31'),
('E010' , 'William Thomas' , 'Phoenix' , '72000' , 'HR' , '38');


#list of queries like select, where, and, or, between, like, is null, is not null

#find the employee name and city of employees whose age is between 30 and 40
SELECT EmployeeName , EmployeeCity
FROM Employees
WHERE EmployeeAge BETWEEN 30 AND 40 ;

#find the employee name and department of employees whose salary is greater than 60000
SELECT EmployeeName , EmployeeDepartment
FROM Employees
WHERE EmployeeName LIKE 'J%' ;
 

SELECT EmployeeName , EmployeeSalary
FROM Employees
WHERE EmployeeSalary > '60000' ;

SELECT EmployeeName , EmployeeCity
FROM Employees
WHERE EmployeeCity = 'New York' OR EmployeeCity = 'Los Angeles'  AND EmployeeAge IS NOT NULL;



