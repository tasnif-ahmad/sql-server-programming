USE Northwind;

SELECT 
    OrderID,
    EmployeeID,
    COUNT(OrderID) OVER (PARTITION BY EmployeeID) AS OrdersPerEmployee
FROM Orders;

