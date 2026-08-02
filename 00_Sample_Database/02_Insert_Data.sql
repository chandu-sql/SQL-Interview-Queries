/*
====================================================
Sample Database - Insert Sample Data
====================================================
*/

INSERT INTO Department
VALUES
(1,'IT'),
(2,'HR'),
(3,'Finance'),
(4,'Sales');

INSERT INTO Employee
VALUES
(101,'John',65000,1,NULL),
(102,'David',55000,1,101),
(103,'Priya',48000,2,NULL),
(104,'Rahul',70000,3,NULL),
(105,'Anjali',52000,2,103),
(106,'Steve',45000,NULL,NULL),
(107,'Amit',75000,4,NULL);
