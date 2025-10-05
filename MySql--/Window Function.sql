CREATE DATABASE tata;
USE tata;

CREATE TABLE employees(
emp_id INT PRIMARY KEY,
fname VARCHAR(59),
lname VARCHAR(58),
desig VARCHAR(85),
dept VARCHAR(74),
salary VARCHAR(44)
);

INSERT INTO employees
VALUES 
(101, "RAJU", "RASTOGI", "MANAGER", "LOAN", 37000),
(102, "SHAM", "MOHAN", "CASHIER", "CASH", 32000),
(103, "BABURAO", "APTE", "ASSOCIATE", "LOAN", 25000),
(104, "PAUL", "PHILIP", "ACCOUNTANT", "ACCOUNT", 45000),
(105, "ALEX", "WATT", "ASSOCIATE", "DEPOSIT", 35000),
(106, "RICK", "WATT", "MANAGER", "ACCOUNT", 65000),
(107, "LEENA", "JHONSON", "LEAD", "CASH", 25000),
(108, "JOHN", "PAUL", "MANAGER", "IT", 75000),
(109, "ALEX", "WATT", "PROBATION", "LOAN", "40000");

WITH avg_sal AS (
SELECT dept, avg(salary) as avg_salary FROM employees GROUP BY dept
)

SELECT 
      e.emp_id, e.fname, e.dept, e.salary, a.avg_salary
FROM employees e
JOIN 
     avg_sal a ON e.dept=a.dept
WHERE e.salary > a.avg_salary;

WITH max_sal AS (
SELECT dept, max(salary) as max_salary FROM employees GROUP BY dept
)

SELECT 
      e.emp_id, e.fname, e.dept, e.salary
FROM employees e
JOIN 
     max_sal m ON e.dept=m.dept
WHERE e.salary = m.max_salary;

























