SELECT now();
SELECT * FROM Customers WHERE EXISTS (SELECT now());
SELECT * FROM Customers WHERE NOT EXISTS (SELECT now());
SELECT * FROM Suppliers;
SELECT * FROM Products;

SELECT SupplierID, SupplierName FROM Suppliers WHERE EXISTS
(SELECT ProductName FROM Products WHERE Products.SupplierID = Suppliers.SupplierID AND Price <20);

SELECT SupplierID, SupplierName FROM Suppliers WHERE NOT EXISTS
(SELECT ProductName FROM Products WHERE Products.SupplierID = Suppliers.SupplierID AND Price <20);

DESC Suppliers;

SELECT ProductName FROM Products WHERE Products.SupplierID = 5 AND Price > 20;