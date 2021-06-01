select * from Customers;

UPDATE Customers
SET CustomerName = '스파이더맨';

UPDATE Customers SET CustomerName = '아이언맨' WHERE CustomerID = 1;
UPDATE Customers SET CustomerName = 'thor' , ContactName = 'odinson', Address = 'Asgard'
WHERE CustomerID = 1;

UPDATE Customers SET City = 'Seoul' Where Country = 'Norway';
UPDATE Customers SET City = 'Seoul', Country = 'Norway' Where CustomerID = 32;
SELECT * FROM Customers WHERE CustomerID = 32;
SELECT * FROM Customers WHERE CustomerID=32;
SELECT * FROM Customers WHERE CustomerID=2;

SELECT * from Employees;
SELECT EmployeeID, LastName, FirstName, Notes FROM Employees WHERE EmployeeID = 2;
