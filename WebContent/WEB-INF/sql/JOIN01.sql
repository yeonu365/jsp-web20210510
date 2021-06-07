CREATE TABLE Table01 (
id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(255), bookID INT);
CREATE TABLE Table02 (
id INT PRIMARY KEY AUTO_INCREMENT, bookName VARCHAR(255));

INSERT INTO Table01 (name, bookID) VALUES ('kim', 1);
INSERT INTO Table01 (name, bookID) VALUES ('lee', 2);
INSERT INTO Table01 (name, bookID) VALUES ('choi', 3);
INSERT INTO Table01 (name, bookID) VALUES ('park', 4);

INSERT INTO Table02 (bookName) VALUES ('book1');
INSERT INTO Table02 (bookName) VALUES ('book2');
INSERT INTO Table02 (bookName) VALUES ('book3');
INSERT INTO Table02 (bookName) VALUES ('book4');

SELECT * FROM Table01;
SELECT * FROM Table02;

SELECT * FROM Table01, Table02;

-- join
SELECT * FROM Table01 JOIN Table02 ON Table01.bookId = Table02.id;
-- alias (AS keyword 생략가능)
SELECT * FROM Table01 AS t1 JOIN Table02 AS t2 On t1.bookId = t2.id;
SELECT * FROM Table01 t1 JOIN Table02 t2 ON t1.bookId = t2.id;

SELECT t1.id AS id1, t1.name AS name1, t1.bookId AS bookId,
t2.id AS id2, t2.bookName AS bname
FROM Table01 t1 JOIN Table02 t2 ON t1.bookId = t2.id;
