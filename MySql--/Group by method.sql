CREATE DATABASE ramam;
USE ramam;

CREATE TABLE ramam(
customer_id INT PRIMARY KEY,
customer VARCHAR(30),
mode VARCHAR(20),
city VARCHAR(35)
);

INSERT INTO ramam
(customer_id, customer, mode, city)
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

SELECT mode, count(customer_id) FROM ramam GROUP BY mode ORDER BY mode ASC;






