CREATE VIEW vw_OrderCustomerEmployee
AS
SELECT
    O.OrderID,
    O.CustomerID,
    C.ContactName AS CustomerName,
    O.EmployeeID,
    E.FirstName AS EmployeeName
FROM Orders O
JOIN Customers C
    ON O.CustomerID = C.CustomerID
JOIN Employees E
    ON O.EmployeeID = E.EmployeeID;
GO


SELECT * 
FROM vw_OrderCustomerEmployee;

-- Make sure database is selected
USE Northwind;
GO

-- ALTER VIEW must start its own batch
ALTER VIEW vw_OrderCustomerEmployee
AS
SELECT
    O.OrderID,
    O.OrderDate,
    O.CustomerID,
    C.ContactName AS CustomerName,
    O.EmployeeID,
    E.FirstName AS EmployeeName
FROM Orders O
JOIN Customers C
    ON O.CustomerID = C.CustomerID
JOIN Employees E
    ON O.EmployeeID = E.EmployeeID;
GO


DROP VIEW vw_OrderCustomerEmployee

