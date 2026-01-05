USE Northwind;
GO

-- Start the transaction
BEGIN TRANSACTION;

-- Step 1: Update ProductID 1
UPDATE Products
SET Price = Price + 10
WHERE ProductID = 1;

-- Step 2: Update ProductID 2
UPDATE Products
SET Price = Price + 20
WHERE ProductID = 2;

-- Create a savepoint after Step 1 and Step 2
SAVE TRANSACTION SP1;

-- Step 3: Update ProductID 3 (mistake!)
UPDATE Products
SET Price = Price + 50
WHERE ProductID = 3;

-- Oops! Rollback only Step 3
ROLLBACK TRANSACTION SP1;

-- Commit remaining valid changes (Step 1 & 2)
COMMIT;

-- Check results
SELECT ProductID, ProductName, Price
FROM Products
WHERE ProductID IN (1,2,3);
