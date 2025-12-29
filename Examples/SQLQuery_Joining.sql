USE Northwind;

SELECT 
    O.OrderID,
    E.FirstName,
    E.LastName
FROM Orders O
JOIN Employees E
ON O.EmployeeID = E.EmployeeID;
