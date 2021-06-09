CREATE TABLE Table05 (name varchar(255) PRIMARY KEY, money INT NOT NULL DEFAULT 0);
INSERT INTO Table05 (name, money) VALUES ('kim', 10000);
INSERT INTO Table05 (name, money) VALUES ('lee', 10000);

SELECT * FROM Table05;
ROLLBACK;  -- commit 이전으로 돌아가게 한다.

UPDATE Table05 SET money = 5000 WHERE name = 'kim';
UPDATE Table05 SET money = 15000 WHERE name = 'lee';
COMMIT;
ROLLBACK;  -- commit을 했기때문에 돌아 가지 못함.