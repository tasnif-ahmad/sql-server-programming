USE Northwind;
GO

DROP TABLE IF EXISTS Test;

CREATE TABLE Test (
    Id INT,
    Name VARCHAR(20)
);


INSERT INTO Test VALUES (1, 'Tasnif');
INSERT INTO Test VALUES (2, 'Ahmad');

SELECT * FROM Test;
