CREATE DATABASE university;
USE university;


CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(34),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(34)
);

INSERT INTO student
VALUES
(101, "SUMIT", 90, "A", "MUMBAI"),
(102, "RAKESH", 60, "B", "DELHI"),
(103, "SOHAN", 99, "A", "PUNE"),
(104, "ROHAN", 89, "B", "MUMBAI"),
(105, "SURESH", 60, "A", "DELHI"),
(106, "MAHESH", 90, "A", "PUNE"),
(107, "SAMBHU", 85, "B", "MUMBAI");

SELECT * FROM student;

# mysql view table

CREATE VIEW view1 AS
SELECT rollno, name, marks FROM student;

DROP view view1;

SELECT * FROM view1;

# fimding the max marks with city

SELECT * 
FROM student
WHERE city = "DELHI";

SELECT max(marks)
FROM (SELECT * 
FROM student
WHERE city = "DELHI") AS temp;

# finding the rollno with name

SELECT rollno 
FROM student 
WHERE rollno % 2 = 0;

SELECT name, rollno
FROM student
WHERE rollno IN (
SELECT rollno 
FROM student 
WHERE rollno % 2 = 0);

# finding the average marks with city

SELECT avg(marks)
FROM student;

SELECT name, marks
FROM student
WHERE marks > (SELECT avg(marks)
FROM student);
