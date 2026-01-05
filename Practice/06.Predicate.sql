--1️ Equality Predicate
SELECT * FROM Categories
WHERE CategoryID = 1;
 
 
--2️ Not Equal Predicate
SELECT * FROM Categories
WHERE CategoryName <> 'Beverages';
 
--3️ Greater Than / Less Than Predicate.
SELECT * FROM Categories
WHERE CategoryID > 5;

--4️ AND Predicate (Multiple Conditions)
SELECT * FROM Categories
WHERE CategoryID > 3 AND CategoryID < 8;

--5️ OR Predicate
SELECT * FROM Categories
WHERE CategoryName = 'Seafood' OR CategoryName = 'Snacks';
 
--6️ LIKE (Pattern Matching Predicate)
SELECT * FROM Categories
WHERE Description LIKE '%food%';
 
--7️ IN Predicate
SELECT * FROM Categories         
WHERE CategoryID IN (1, 3, 7);
 
--8️ BETWEEN Predicate
SELECT * FROM Categories
WHERE CategoryID BETWEEN 2 AND 6;
