CREATE DATABASE tcs;
USE tcs;

CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR(55),
salary INT NOT NULL
);

SELECT * FROM employee;

INSERT INTO employee
(id, name, salary)
VALUES
(1,"ADAM",20000),
(2,"BOB",23000),
(3,"CASEY",25000);
