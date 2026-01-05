SELECT 
ABS(-10) AS AbsoluteValue,
ROUND(45.678, 1) AS Rounded,
CEILING(23.3) AS CeilingValue,
FLOOR(23.9) AS FloorValue;
 
--✔ Find employees born before 1960

SELECT FirstName, BirthDate
FROM Employees
WHERE YEAR(BirthDate) < 1960;