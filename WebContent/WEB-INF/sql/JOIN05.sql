SELECT * FROM Orders;

SELECT o.OrderID, c.CustomerName
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID;
SELECT o.OrderID, c.CustomerName, e.LastName, e.FirstName
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID 
JOIN Employees e ON o.EmployeeID = e.EmployeeID;

SELECT o.OrderID, c.CustomerName, concat(e.LastName, ', ', e.FirstName) EmployeeName
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID 
JOIN Employees e ON o.EmployeeID = e.EmployeeID;