-- data type
-- number,
-- INT, DECIMAL
CREATE TABLE MyTable3 (
Col1 INT,
Col2 DECIMAL
);
INSERT INTO MyTable3 (Col1, Col2) VALUES (55, 3.14);
SELECT * FROM MyTable3;
DESC MyTable3;

CREATE TABLE MyTable4 (
Col1 DECIMAL,
Col2 DECIMAL(10, 2),
Col3 DECIMAL(3,1)  -- 3은 숫자의 총 자리 숫자를 의미한다.
);
INSERT INTO MyTable4
(Col1, Col2, Col3)
VALUES (3.14, 3.14, 3.14);
SELECT * From MyTable4;

INSERT INTO MyTable4
(Col1, Col2, Col3)
Values
(333.14,333.14,33.1);
SELECT * From MyTable4;

-- char(String)
CREATE TABLE MyTable5 (
Col1 CHAR(5),   
Col2 VARCHAR(5)
);
INSERT INTO MyTable5 (Col1, Col2) VALUES ('abc', 'abc');
SELECT * FROM MyTable5;
INSERT INTO MyTable5
(Col1, Col2)
values ('abcde', 'abcde');
INSERT INTO MyTable5 (Col1, Col2) VALUES ('abc  ', 'abc  ');
DELETE FROM MyTable5 WHERE Col1 = 'abc';

-- date, datetime
Create Table MyTable6 (Col1 DATE, Col2 DATETIME, Col3 TIMESTAMP);
INSERT INTO MyTable6 (Col1, Col2, Col3) 
VALUES ('2021-06-02','2021-06-02 11:07:30', '2021-06-02 11:07:30');
SELECT * FROM MyTable6;

-- exercise3

CREATE TABLE Persons
 (
  PersonID int,
  LastName varchar(255),
  FirstName varchar(255),
  Address varchar(255),
  City varchar(255) 
);
DESC Persons;
DROP TABLE Persons;
SELECT * FROM Persons;