-- Get all Customer IDs from Customers table
-- and combine them with Supplier IDs (duplicates removed)
(
    SELECT CustomerID 
    FROM Customers

    UNION                  -- UNION: combines both result sets, removes duplicates

    SELECT SupplierID 
    FROM Suppliers
)

-- EXCEPT: remove any IDs that also appear in Employees table
EXCEPT
(
    SELECT EmployeeID 
    FROM Employees
)

-- UNION: add another result set to the remaining data
UNION
(
    -- INTERSECT: get only Customer IDs that exist
    -- in BOTH Customers and Orders tables
    SELECT CustomerID 
    FROM Customers

    INTERSECT

    SELECT CustomerID 
    FROM Orders
);
      