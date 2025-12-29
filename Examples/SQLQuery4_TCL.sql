-- Assume table already exists

BEGIN TRANSACTION;  -- Start a transaction


INSERT INTO Test VALUES (10, 'TCL1');
INSERT INTO Test VALUES (11, 'TCL2');


SELECT * FROM Test;


ROLLBACK;

SELECT * FROM Testold;

BEGIN TRANSACTION;

INSERT INTO Testold VALUES (12, 'TCL3');
INSERT INTO Testold VALUES (13, 'TCL4');

COMMIT;

-- Final data check
SELECT * FROM Test;
