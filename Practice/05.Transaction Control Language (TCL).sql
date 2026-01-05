 
BEGIN TRANSACTION;
 
UPDATE Products
SET Price = 20
WHERE ProductID = 1;
 
COMMIT;
 
select * from Products
 
--✅ 2️ BEGIN TRANSACTION + UPDATE + ROLLBACK

BEGIN TRANSACTION;
 
UPDATE Products
SET Price = 15
WHERE ProductID = 2;
 
ROLLBACK;
 

BEGIN TRANSACTION;
 
-- Step 1: change ProductID = 3
UPDATE Products
SET Price = 12
WHERE ProductID = 3;
 
select *from Products
-- create a savepoint (SQL Server syntax)
SAVE TRANSACTION P1;
 
-- Step 2: change ProductID = 4
UPDATE Products
SET Price = 50
WHERE ProductID = 4;
 
-- rollback only to the savepoint — undo step 2 but keep step 1
ROLLBACK TRANSACTION P1;
 
-- finally commit the remaining changes (step 1 stays)
COMMIT;