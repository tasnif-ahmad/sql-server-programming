USE Northwind;

CREATE TABLE IdentityDemo (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(20)
);
INSERT INTO IdentityDemo (Name) VALUES ('Amit');
INSERT INTO IdentityDemo (Name) VALUES ('Riya');
INSERT INTO IdentityDemo (Name) VALUES ('Karan');

SELECT * FROM IdentityDemo;
