CREATE TABLE MyTable9 (id INT UNIQUE, name VARCHAR(255));
INSERT INTO MyTable9 (id, name) VALUES (2,'hello');
INSERT INTO MyTable9 (id, name) VALUES (2,'hello'); -- 불가
INSERT INTO MyTable9 (id, name) VALUES (3,'hello');
SELECT * FROM MyTable9;

INSERT INTO MyTable9 (name) VALUES('world');
INSERT INTO MyTable9 (id) VALUES(0);

-- NULL
SELECT * FROM MyTable9 WHERE id='';
SELECT * FROM MyTable9 WHERE id=0;
SELECT * FROM MyTable9 WHERE id IS NULL;
SELECT * FROM MyTable9 WHERE id IS NOT NULL;

-- IFNULL
SELECT ifnull(id, 0), name FROM MyTable9;
SELECT ifnull(id,100), name FROM MyTable9;
SELECT ifnull(id,200) FROM MyTable9;

--
CREATE TABLE MyTable10 (id INT UNIQUE NOT NULL, name VARCHAR(255) NOT NULL);
