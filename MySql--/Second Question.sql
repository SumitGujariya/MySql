CREATE DATABASE polo;
USE polo;

CREATE TABLE customer(
id INT PRIMARY KEY,
name VARCHAR(30),
mode VARCHAR(20),
city VARCHAR(35)
);

INSERT INTO customer
(id, name, mode, city)
VALUES
(101, "SURESH", "netbanking", "RATLAM"),
(102, "MAHESH", "creditcard", "JAORA"),
(103, "VINAY", "creditcard", "NIMACH"),
(104, "RAKESH", "netbanking", "BARODA"),
(105, "RAGHAV", "creditcard", "NAMLI"),
(106, "ANSHU", "debitcard", "SAILANA"),
(107, "SAMAY", "debitcard", "BHOPAL"),
(108, "TANMAY", "netbanking", "INDOR"),
(109, "KAJAL", "netbanking", "UJJAIN"),
(110, "YASH", "creditcard", "INDOR");


SELECT mode, count(id) FROM customer GROUP BY mode;