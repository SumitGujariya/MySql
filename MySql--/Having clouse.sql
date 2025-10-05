CREATE DATABASE school;
USE school;

CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(49),
marks INT,
grade VARCHAR(1),
city VARCHAR(34)
);

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "SUMIT", 90, "A", "MUMBAI"),
(102, "RAKESH", 60, "B", "DELHI"),
(103, "SOHAN", 99, "A", "PUNE"),
(104, "ROHAN", 89, "B", "MUMBAI");

SELECT city
FROM student
WHERE grade = "B"
GROUP BY city
HAVING max(marks) > 70
ORDER BY city ASC;