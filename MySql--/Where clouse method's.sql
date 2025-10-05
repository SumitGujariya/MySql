CREATE DATABASE college;
USE college;

CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(40),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(45)
);

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101,"SUMIT",90,"A","NAMLI"),
(102,"RAKESH",60,"C","RATLAM"),
(103,"MOHIT",80,"B","UJJAIN"),
(104,"YASH",90,"D","SAILANA"),
(105,"SAKSHI",99,"A","JAORA"),
(106,"SURYA",85,"B","BHOPAL");


SELECT * FROM student WHERE marks >80 LIMIT 2;

SELECT city, AVG(marks) FROM student GROUP BY city ORDER BY AVG(marks)DESC;

SELECT grade, count(rollno) FROM student GROUP BY grade ORDER BY grade;



