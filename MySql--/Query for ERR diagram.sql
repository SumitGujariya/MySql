CREATE DATABASE school;
USE school;

DROP DATABASE school;
CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(49),
marks INT,
grade VARCHAR(1),
city VARCHAR(34)
);

CREATE TABLE dept(
id INT PRIMARY KEY,
name VARCHAR(37)
);

INSERT INTO dept
VALUES
(01, "ENGLISH"),
(02, "IT");
SELECT * FROM dept;

CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR(47),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES dept(id)
);

INSERT INTO teacher
VALUES 
()

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "SUMIT", 90, "A", "MUMBAI"),
(102, "RAKESH", 60, "B", "DELHI"),
(103, "SOHAN", 99, "A", "PUNE"),
(104, "ROHAN", 89, "B", "MUMBAI");

SET SQL_SAFE_UPDATES = 0;
SELECT * FROM student; 

DELETE FROM student
WHERE marks < 33;

UPDATE student
SET marks = "12"
WHERE rollno = "102";

SELECT city
FROM student
WHERE grade = "A"
GROUP BY city
HAVING max(marks) >= 70
ORDER BY city ASC;

SELECT 