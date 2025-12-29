CREATE TABLE StudentMarks (
    RollNo INT,
    Name VARCHAR(20),
    Marks INT
);
INSERT INTO StudentMarks VALUES (1, 'Amit', 75);
INSERT INTO StudentMarks VALUES (2, 'Riya', 55);
INSERT INTO StudentMarks VALUES (3, 'Karan', 82);
INSERT INTO StudentMarks VALUES (4, 'Neha', 60);

SELECT*FROM StudentMarks
WHERE Marks >= 60