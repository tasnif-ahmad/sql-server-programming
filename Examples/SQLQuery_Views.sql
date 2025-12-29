USE Northwind;
GO

CREATE VIEW vw_CustomerOrders
AS
SELECT 
    c.CustomerID,
    c.ContactName,
    c.Country,
    o.OrderID,
    o.OrderDate
FROM Customers c
JOIN Orders o
ON c.CustomerID = o.CustomerID;
GO

SELECT * FROM vw_CustomerOrders;
