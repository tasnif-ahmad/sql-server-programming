-- Display all details of all products
SELECT * FROM Products;

-- Display product name and price only
SELECT ProductName, Price 
FROM Products;

-- Display products whose price is greater than 50
SELECT * 
FROM Products
WHERE Price > 50;

-- Display top 5 products
SELECT TOP 5 * 
FROM Products;

-- Display all details of all shippers
SELECT * FROM Shippers;

-- Display shippers ordered alphabetically by name
SELECT * 
FROM Shippers
ORDER BY ShipperName;

-- Display all details of all students
SELECT * FROM Students;

-- Display students who belong to the BCA course
SELECT * 
FROM Students
WHERE Course = 'BCA';

-- Display total number of students
SELECT COUNT(*) AS TotalStudents
FROM Students;
