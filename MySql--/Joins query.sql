CREATE DATABASE college;
USE college;

CREATE TABLE student(
id INT PRIMARY KEY,
name VARCHAR(56)
);

INSERT INTO student
VALUES
(101, "ADAM"),
(102, "BOB"),
(103, "casey");

CREATE TABLE course(
id INT PRIMARY KEY,
course  VARCHAR(45)
);

INSERT INTO course 
(id, course)
VALUES
(102, "ENGLISH"),
(105, "MATHS"),
(103, "SCIENCE"),
(107, "COMPUTER SCIENCE");

CREATE TABLE employee(
id INT PRIMARY KEY,
name  VARCHAR(66),
manager_id INT
);

INSERT INTO employee
(id, name, manager_id)
VALUES
(101,"ADAM", 103),
(102,"BOB", 104),
(103,"CASEY", NULL),
(104,"DONALD", 103);

SELECT name FROM employee
UNION 
SELECT name FROM employee;

SELECT name FROM employee
UNION ALL
SELECT name FROM employee;

SELECT s.name as manager_name, c.name
FROM employee as s
JOIN employee as c
ON s.id = c.manager_id;

SELECT s.name, c.name
FROM employee as s
JOIN employee as c
ON s.id = c.manager_id;

SELECT s.name, c.name
FROM employee as s
JOIN employee as c
ON s.id = c.manager_id;

# all the joins query 

SELECT * FROM student AS s 
RIGHT JOIN course AS c
ON s.id = c.id
WHERE s.id IS NULL;

SELECT * FROM student AS s 
LEFT JOIN course AS c
ON s.id = c.id
UNION
SELECT * FROM student AS s 
RIGHT JOIN course AS c
ON s.id = c.id;

SELECT * FROM student AS s 
RIGHT JOIN course AS c
ON s.id = c.id;

SELECT * FROM student AS s 
LEFT JOIN course AS c
ON s.id = c.id;

SELECT * FROM student AS s 
INNER JOIN course AS c
ON s.id = c.id;

SELECT * FROM student AS s 
RIGHT JOIN course AS c
ON s.id = c.id
WHERE s.id IS NULL;

SELECT * FROM student AS s 
LEFT JOIN course AS c
ON s.id = c.id
WHERE c.id IS NULL;

SELECT * FROM student AS s 
RIGHT JOIN course AS c
ON s.id = c.id
WHERE s.id IS NULL;

SELECT * FROM student AS a 
course AS c



