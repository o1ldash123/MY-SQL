--Create Restaurant Table
CREATE TABLE IF NOT EXISTS Restaurant(
Name TEXT ,
Neighborhood TEXT ,
Cuisine TEXT ,
Review REAL,
Price TEXT ,
Health TEXT );

--Insert data
INSERT INTO Restaurant(Name , Neighborhood , Cuisine , Review , Price , Health) VALUES
('Joe''s Pizza' , 'Manhattan' , 'Italian' , 4.5 , '$20.00' , ''),
('Sushi Place' , 'Brooklyn' , 'Japanese' , 4.8 , '$65.00' , ''),
('Taco Town' , 'Queens' , 'Mexican' , 4.1 , '$50.00' , 'Fair'),
('Burger Joint' , 'Bronx' , 'American' , 4.0, '$25.00' , 'Good'),
('Curry House' , 'Staten Island' , 'Indian' , 4.7 , '$40.00' , '' ) ,
('Pasta Palace' , 'Manhattan' , 'Chinese' , 4.6 , '$30.00' , ' '),
('Ramen Ramen' , 'Brooklyn' , 'Japanese' , 4.9 , '$55.00' , ' '),
('Burrito Bros' , 'Queens' , 'Mexican' , 4.4 , '$45.00' , 'Fair'),
('Steakhouse Supreme' , 'Bronx' , 'American' , 4.8 , '$70.00' , 'Good'),
('Spice Symphony' , 'Staten Island' , 'Indian' , 4.9 , '$35.00' , 'Excellent');

SELECT DISTINCT Neighborhood
FROM Restaurant;

SELECT DISTINCT Cuisine
FROM Restaurant;

SELECT *
FROM Restaurant 
WHERE Cuisine = 'Chinese' ;

SELECT *
FROM Restaurant
WHERE  Review >=4.0 ;

SELECT *
FROM Restaurant
WHERE Cuisine = 'Italian'
AND Price IN ('$20.00' , '$30.00') ;

SELECT *
FROM Restaurant 
WHERE Price >= '$40.00' ;

SELECT *
FROM Restaurant 
WHERE name LIKE '%Spice%' ;

SELECT *
FROM Restaurant
WHERE neighborhood IN ('Manhattan' , 'Brooklyn' , 'Queens');

SELECT *
FROM Restaurant
WHERE Health = '' OR Health IS NULL ;

SELECT *
FROM Restaurant
ORDER BY review DESC
LIMIT 4 ;




