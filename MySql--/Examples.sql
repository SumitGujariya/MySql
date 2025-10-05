CREATE DATABASE college;
USE college;

CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(30)
);
 
 SELECT * FROM student;
 
 INSERT INTO student
 (rollno, name)
 VALUES
 (01, "SUMIT"),
 (02, "SHYAM"),
 (03, "YASH");
 
 INSERT INTO student VALUES(04,"SUYASH");
 

CREATE TABLE temp1(
id INT,
name VARCHAR(40),
age INT,
city VARCHAR(30)
);
 
 INSERT INTO temp1 VALUES(101,"SUMIT",23,"NAMLI");
 
CREATE TABLE emp(
id INT,
salary INT DEFAULT 20000 
);
 
INSERT INTO emp (id) VALUES (101); 

SELECT * FROM emp; 

 
 
 
 
 
 