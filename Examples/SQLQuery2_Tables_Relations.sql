USE Northwind;

CREATE TABLE Dept (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(20)
);
 
CREATE TABLE Emp (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(20),
    DeptID INT FOREIGN KEY REFERENCES Dept(DeptID)
);

INSERT INTO Dept VALUES (1, 'IT');
INSERT INTO Emp VALUES (101, 'Amit', 1);

SELECT EmpName, DeptName
FROM Emp JOIN Dept ON Emp.DeptID = Dept.DeptID;
