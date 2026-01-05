CREATE INDEX CustEmp_IDX
ON Orders (CustomerID ASC, EmployeeID DESC);

ALTER INDEX CustEmp_IDX
ON Orders
REBUILD;

SELECT *
FROM Orders
WHERE EmployeeID = 5;

DROP INDEX CustEmp_IDX
ON Orders;

