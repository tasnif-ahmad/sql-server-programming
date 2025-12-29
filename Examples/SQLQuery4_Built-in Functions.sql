USE Northwind;

-- Numeric / Aggregate example: Count orders per employee
SELECT 
    EmployeeID,
    COUNT(OrderID) AS TotalOrders
FROM Orders
GROUP BY EmployeeID;

-- String example: Names in uppercase
SELECT 
    FirstName,
    UPPER(FirstName) AS UpperName,
    LEN(FirstName) AS NameLength
FROM Employees;

-- Date example: Extract year and month of orders
SELECT 
    OrderID,
    OrderDate,
    YEAR(OrderDate) AS OrderYear,
    MONTH(OrderDate) AS OrderMonth
FROM Orders;
