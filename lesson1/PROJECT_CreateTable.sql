CREATE TABLE IF NOT EXISTS employees(
   ID TEXT PRIMARY KEY ,
   Name TEXT ,
   Age INTEGER ,
   DateHired TEXT ,
   CriminalRecord BOOLEAN
) ;
INSERT OR IGNORE INTO employees(ID , Name , Age , DateHired , CriminalRecord ) VALUES
('E001' , 'John Doe' , 30 , '2020-01-15' , 0) ,
('E002' , 'Jane Smith' , 25 , '2019-03-22' , 1) ,
('E003' , 'Emily Davis' , 28 , '2021-07-10' , 0) ,
('E004' , 'Michael Brown' , 35 , '2018-11-05' , 0) ,
('E005' , 'Sarah Wilson' , 32 , '2020-06-30' , 1) ,
('E006' , 'David Lee' , 27 , '2019-09-18' , 0) ,
('E007' , 'Laura Taylor' , 29 , '2021-02-14' , 0) ;
SELECT * FROM employees ;
SELECT * FROM employees  WHERE CriminalRecord = 1 ;