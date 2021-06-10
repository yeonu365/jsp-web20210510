SELECT count(*) FROM Customers;

SELECT Country, COUNT(*)
FROM Customers GROUP BY Country;

SELECT Country, COUNT(*) cnt
FROM Customers GROUP BY Country ORDER BY cnt DESC;
