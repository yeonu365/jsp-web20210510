SELECT ProductName
FROM Products
WHERE ProductID = ANY
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity = 10);
  
  SELECT ProductID
  FROM OrderDetails
  WHERE Quantity = 10;
  
  SELECT * FROM OrderDetails;
  SELECT * FROM Products;
  
  SELECT ProductName
FROM Products
WHERE ProductID = ALL
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity = 10);