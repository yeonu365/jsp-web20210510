SELECT Country FROM Customers WHERE CustomerID = 1;
SELECT * FROM Customers WHERE Country = 'Germany';
-- 한번에 하기
SELECT * FROM Customers WHERE Country = (SELECT Country FROM Customers WHERE CustomerID = 1);

SELECT * FROM Suppliers;
SELECT * FROM Suppliers WHERE Country =
(SELECT Country FROM Customers WHERE CustomerID = 1);

SELECT * FROM Customers WHERE Country <> (SELECT Country FROM Customers WHERE CustomerID = 1);

SELECT * FROM Employees WHERE BirthDate < '1952-02-19' ;
SELECT * FROM Employees WHERE BirthDate < (SELECT BirthDate FROM Employees WHERE EmployeeID=2);