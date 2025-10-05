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

ALTER TABLE student
DROP COLUMN age;

ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 19;

ALTER TABLE student
MODIFY COLUMN AGE VARCHAR(2);

ALTER TABLE student
CHANGE age stu_age INT;

ALTER TABLE student 
DROP COLUMN stu_age;

ALTER TABLE  stud
RENAME TO student;

TRUNCATE TABLE student;

INSERT INTO student
(rollno, name, marks, stu_age)
VALUES
(108, "RAGHINI", 58, 100);

ALTER TABLE student 
CHANGE name full_name VARCHAR(48);

DELETE FROM student
WHERE marks < 80;

SET SQL_SAFE_UPDATES = 0;

ALTER TABLE student
DROP COLUMN grade;



