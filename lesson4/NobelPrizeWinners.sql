CREATE TABLE IF NOT EXISTS NOBELWINNERS(
  YEAR INTEGER ,
  SUBJECT TEXT ,
  WINNER TEXT ,
  COUNTRY TEXT ,
  CATEGORY TEXT 
  );
INSERT INTO NOBELWINNERS(YEAR , SUBJECT , WINNER , COUNTRY , CATEGORY) VALUES
(2020 , 'Physics' , 'Roger Penrose' , 'United Kingdom' , 'Nobel Prize in Physics') ,
(1950 , 'Chemistry' , 'Emmanuelle Charpentier' , 'France' , 'Nobel Prize in Chemistry') ,
(2020 , 'Chemistry' , 'Jennifer Doudna' , 'United States' , 'Nobel Prize in Chemistry') ,
(2010 , 'Literature' , 'Louise Glück' , 'United States' , 'Nobel Prize in Literature') ,
(2021 , 'Peace' , 'World Food Programme' , 'International Organization' , 'Nobel Peace Prize') ,
(1992 , 'Economics' , 'Paul R. Milgrom' , 'United States' , 'Nobel Memorial Prize in Economic Sciences') ,
(1678 , 'Economics' , 'Robert B. Wilson' , 'United States' , 'Nobel Memorial Prize in Economic Sciences') ,
(1678 , 'Physiology' , 'Bob Dylan' , 'United States' , 'Nobel Prize in Literature') ;

SELECT * FROM NOBELWINNERS WHERE SUBJECT NOT LIKE "P%" ;

