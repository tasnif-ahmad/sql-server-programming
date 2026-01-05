SELECT *
FROM Customers C
WHERE
    -- Subquery 1: customers who placed at least one order
    C.CustomerID IN
    (
        SELECT CustomerID
        FROM Orders
    )

    AND

    -- Subquery 2: correlated subquery (order count per customer)
    (
        SELECT COUNT(*)
        FROM Orders O
        WHERE O.CustomerID = C.CustomerID
    ) > 3

  
