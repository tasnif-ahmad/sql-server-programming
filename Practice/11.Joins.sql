SELECT
    O.OrderID,
    O.OrderDate,

    -- from Customers (INNER JOIN)
    C.CustomerID,

    -- from Employees (LEFT JOIN)
    E.EmployeeID,
    E.FirstName

FROM Orders O

-- INNER JOIN: only orders that have customers
INNER JOIN Customers C
    ON O.CustomerID = C.CustomerID

-- LEFT JOIN: show all orders even if employee is missing
LEFT JOIN Employees E
    ON O.EmployeeID = E.EmployeeID

-- RIGHT JOIN: show all employees even if they have no orders
RIGHT JOIN Employees E2
    ON O.EmployeeID = E2.EmployeeID;
