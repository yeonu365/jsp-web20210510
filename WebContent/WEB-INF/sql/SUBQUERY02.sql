SELECT * FROM Customers;
SELECT * FROM Orders;

SELECT CustomerID FROM Orders;
SELECT * FROM Customers WHERE CustomerID IN (90, 81, 34);

SELECT * FROM Customers WHERE CustomerID IN (SELECT CustomerID FROM Orders);
SELECT * FROM Customers WHERE CustomerID  NOT IN (SELECT CustomerID FROM Orders);

SELECT * FROM Orders;

SELECT * FROM Employees WHERE EmployeeID IN (SELECT EmployeeID FROM Orders);
SELECT * FROM Employees WHERE EmployeeID NOT IN (SELECT EmployeeID FROM Orders);