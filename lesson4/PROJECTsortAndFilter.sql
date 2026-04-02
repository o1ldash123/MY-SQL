DROP TABLE IF EXISTS HackerNews;
CREATE TABLE IF NOT EXISTS HackerNews(
    PostID TEXT PRIMARY KEY ,
    Title TEXT ,
    Author TEXT ,
    Score INTEGER ,
    Comments INTEGER ,
    PostDate TEXT );
INSERT INTO HackerNews(PostID , Title , Author , Score , Comments , PostDate) VALUES
('P001' , 'Roblox 2020 hack incident' , 'Alice' , 150 , 20 , '2024-01-15'),
('P002' , 'More than 1000 people worldwide affected by hackers' , 'Bob' , 200 , 30 , '2024-02-20'),
('P003' , 'Roblox shutdown' , 'Charlie' , 250 , 40 , '2024-03-10'),
('P004' , 'Best SQL Practices' , 'David' , 300 , 50 , '2024-04-05'),
('P005' , 'Python PIL crisis' , 'Eve' , 350 , 60 , '2024-05-25');

SELECT Title AS "Post Title" , Comments , PostDate , Author , Score 
FROM HackerNews
ORDER BY Score DESC;

SELECT Title AS "Most Commented Post" ,Comments , Author
FROM HackerNews
WHERE Comments = (SELECT MAX(Comments) FROM HackerNews);


