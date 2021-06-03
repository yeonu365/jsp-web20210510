-- ALTER TABLE
CREATE TABLE MyTable16
(id INT, title VARCHAR(255), body VARCHAR(255));

SELECT * FROM MyTable16;

-- add column
ALTER TABLE MyTable16 ADD inserted TIMESTAMP;
-- drop column
ALTER TABLE MyTable16 DROP COLUMN inserted;

desc MyTable16;
-- modify column
Alter Table MyTable16 MODIFY COLUMN body VARCHAR(1023);
-- add not null
ALTER TABLE MyTable16 MODIFY title VARCHAR(255) NOT NULL;
INSERT INTO MyTable16 (id, title) VALUES (1, 'title1');

SELECT * FROM MyTable16;
Alter Table MyTable16 MODIFY body VARCHAR(1023) NOT NULL;

UPDATE MyTable16 SET body='' WHERE body IS NULL;
-- add unique
ALTER TABLE MyTable16 ADD UNIQUE (id);
desc MyTable16;

-- add primary key
ALTER TABLE MyTAble16 ADD PRIMARY KEY (id);
desc MyTable16;

-- remover privary key
ALTER TABLE MyTable16 DROP PRIMARY KEY;

-- add auto_increment
ALTER TABLE MyTable16 MODIFY id INT PRIMARY KEY AUTO_INCREMENT;
