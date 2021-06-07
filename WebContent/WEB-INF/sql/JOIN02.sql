-- joins.spathon.com 참조
CREATE TABLE Users (id INT, name VARCHAR(255));
CREATE TABLE Likes (userId INT, `like` VARCHAR(255));

INSERT INTO Users (id, name) VALUES (1, 'patrik');
INSERT INTO Users (id, name) VALUES (2, 'Albert');
INSERT INTO Users (id, name) VALUES (3, 'Maria');
INSERT INTO Users (id, name) VALUES (4, 'Darwin');
INSERT INTO Users (id, name) VALUES (5, 'Elizabeth');
SELECT * FROM Users;

INSERT INTO Likes (userId, `like`) VALUES (3, 'Stars');
INSERT INTO Likes (userId, `like`) VALUES (1, 'Climbing');
INSERT INTO Likes (userId, `like`) VALUES (1, 'Code');
INSERT INTO Likes (userId, `like`) VALUES (6, 'Rugby');
INSERT INTO Likes (userId, `like`) VALUES (4, 'Apples');
SELECT * FROM Likes;

SELECT * FROM Users, Likes;
SELECT * FROM Users JOIN Likes ON Users.id = Likes.userId; -- join(inner join)
SELECT * FROM Users LEFT JOIN Likes ON Users.id = Likes.userId; -- left join
SELECT * FROM Users RIGHT JOIN Likes ON Users.id = Likes.userId; -- right join
-- SELECT * FROM Users FULL JOIN Likes ON Users.id = Likes.userId;  <-SQL엔 없음?

SELECT * FROM Users LEFT JOIN Likes ON Users.id = Likes.userId
WHERE Likes.userId IS NULL;
SELECT * FROM Users RIGHT JOIN Likes ON Users.id = Likes.userId
WHERE Users.id IS NULL;

