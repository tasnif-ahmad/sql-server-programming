USE Northwind


SELECT 
    YEAR(OrderDate) AS OrderYear,
    COUNT(OrderID) AS TotalOrders
FROM Orders
GROUP BY YEAR(OrderDate)
HAVING COUNT(OrderID) > 100;
