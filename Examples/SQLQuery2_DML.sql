-- assume table already exists
INSERT INTO Test VALUES (1, 'Tasnif');
INSERT INTO Test VALUES (2, 'Ahmad');

UPDATE Test
SET Name = 'DMLexample'
WHERE Id = 2;

DELETE FROM Test
WHERE Id = 1;

SELECT * FROM Test;
