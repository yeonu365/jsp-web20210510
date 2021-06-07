SELECT * FROM Users u LEFT JOIN Likes l ON u.id = l.userId
UNION
SELECT * FROM Users u RIGHT JOIN Likes l ON u.id = l.userId;
SELECT * FROM Users u UNION SELECT * FROM Likes l;
