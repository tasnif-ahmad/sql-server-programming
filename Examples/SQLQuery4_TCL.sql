-- Assume table already exists
-- Table: Test(Id INT, Name VARCHAR(20))

BEGIN TRANSACTION;  -- Start a transaction

-- Insert two rows
INSERT INTO Test VALUES (10, 'TCL1');
INSERT INTO Test VALUES (11, 'TCL2');

-- Check current data
SELECT * FROM Test;

-- Rollback the transaction (undo changes)
ROLLBACK;

-- Check data again to see that inserted rows are gone
SELECT * FROM Testold;

-- Start another transaction
BEGIN TRANSACTION;

-- Insert rows again
INSERT INTO Testold VALUES (12, 'TCL3');
INSERT INTO Testold VALUES (13, 'TCL4');

-- Commit this transaction (save changes)
COMMIT;

-- Final data check
SELECT * FROM Test;
