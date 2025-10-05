CREATE DATABASE university;
USE university;

DROP DATABASE university;

CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(34)
);

INSERT INTO student
VALUES
(101, "SUMIT"),
(102, "RAKESH"),
(103, "SOHAN"),
(104, "ROHAN");

CREATE TABLE kids(
rollno INT PRIMARY KEY,
name VARCHAR(34),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(34)
);

INSERT INTO kids
VALUES
(101, "SUMIT", 90, "A", "MUMBAI"),
(102, "RAKESH", 60, "B", "DELHI"),
(103, "SOHAN", 99, "A", "PUNE"),
(104, "ROHAN", 89, "B", "MUMBAI"),
(105, "SURESH", 60, "A", "DELHI"),
(106, "MAHESH", 90, "A", "PUNE"),
(107, "SAMBHU", 85, "B", "MUMBAI");

SELECT * FROM kids;

SELECT * FROM student CROSS JOIN kids;

SELECT *
FROM student
NATURAL JOIN kids;



