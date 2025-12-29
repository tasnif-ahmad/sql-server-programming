USE Northwind;

USE Northwind;

SELECT EmployeeID, FirstName, LastName
FROM Employees
WHERE EmployeeID IN (
    SELECT EmployeeID
    FROM Orders
);

