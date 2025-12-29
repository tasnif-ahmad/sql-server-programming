USE Northwind;

CREATE TABLE MyStudents (
    StudentID INT PRIMARY KEY,          
    StudentName VARCHAR(20) NOT NULL,   
    Age INT CHECK (Age >= 18),          
    City VARCHAR(20) DEFAULT 'Delhi'   
);
INSERT INTO MyStudents (StudentID, StudentName, Age)
VALUES (1, 'Amit', 20);

INSERT INTO MyStudents (StudentID, StudentName, Age, City)
VALUES (2, 'Riya', 19, 'Mumbai');

SELECT * FROM MyStudents;
