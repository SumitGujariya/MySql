CREATE DATABASE tata;
USE tata;

DROP DATABASE tata;

CREATE TABLE employees (
  emp_id INT PRIMARY KEY,
  fname VARCHAR(59),
  lname VARCHAR(58),
  desig VARCHAR(85),
  dept VARCHAR(74),
  salary INT,
  dob DATE
);

INSERT INTO employees
VALUES 
(101, "RAJU", "RASTOGI", "MANAGER", "LOAN", "37000", '2023-05-20'),
(102, "SHAM", "MOHAN", "CASHIER", "CASH", "32000", '2013-12-23'),
(103, "BABURAO", "APTE", "ASSOCIATE", "LOAN", "25000", '2045-06-24'),
(104, "PAUL", "PHILIP", "ACCOUNTANT", "ACCOUNT", "45000", '2034-02-13'),
(105, "ALEX", "WATT", "ASSOCIATE", "DEPOSIT", "35000", '2015-06-29'),
(106, "RICK", "WATT", "MANAGER", "ACCOUNT", "65000", '2012-07-22'),
(107, "LEENA", "JHONSON", "LEAD", "CASH", "25000", '2023-09-12'),
(108, "JOHN", "PAUL", "MANAGER", "IT", "75000", '2021-11-26'),
(109, "ALEX", "WATT", "PROBATION", "LOAN", "40000", '2022-12-27');


SELECT * FROM employees;

SELECT DATE_FORMAT('2023-05-20 10:30:02', '%h:%i %p') AS formatted_time;

SELECT 
emp_id AS id,
CONCAT(fname, ' ', lname) AS name,
dob,
DATE_FORMAT(dob, '%D %b %Y') AS new_dob
 FROM 
 employees;

SELECT emp_id, fname, DATE_SUB(dob, INTERVAL 3 YEAR) AS updated_date_of_birth FROM employees;

SELECT 
  emp_id AS id,
  CONCAT(fname, ' ', lname) AS name,
  dob,
  DATE_SUB(dob, INTERVAL 3 YEAR) AS updated_date_of_birth
FROM 
  employees;

SELECT 
   emp_id AS id,
  CONCAT(fname, ' ', lname) AS name,
  dob,
  DATE_ADD(dob, INTERVAL 1 MONTH) AS updated_date_of_birth FROM employees;

SELECT DATEDIFF('2023-06-15', '2023-06-2') AS diffremce;

SELECT TIMEDIFF('2023-06-01 10:30:00', '2023-06-01 10:15:00') AS diffremce;

SELECT emp_id,fname,EXTRACT(YEAR FROM dob) AS birth_day FROM employees;

SELECT CURRENT_TIMESTAMP();
SELECT CURRENT_TIME();
SELECT CURRENT_DATE();


SELECT MONTH('2023-05-20 10:30:00');
SELECT TIME('2023-05-20 10:30:00');
SELECT TIME(CURRENT_TIMESTAMP());























