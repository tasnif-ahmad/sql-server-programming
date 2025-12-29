SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Customers';
SELECT *
FROM Customers;
SELECT 
    o.OrderID,
    c.ContactName,
    o.OrderDate
FROM Orders o
JOIN Customers c
    ON o.CustomerID = c.CustomerID;
   