SELECT * FROM Products;

-- min , max
SELECT min(price) FROM Products;
SELECT max(Price) FROM Products;
-- count , avg, sum
SELECT count(*) FROM Products;
SELECT avg(Price) FROM Products;
SELECT sum(Price) FROM Products;
SELECT count(*) FROM Products WHERE Unit;
SELECT count(*) FROM Products WHERE Price = 18;
SELECT avg(ProductName) FROM Products;