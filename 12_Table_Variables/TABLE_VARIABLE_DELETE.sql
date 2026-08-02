/*
====================================================
DELETE FROM TABLE VARIABLE
====================================================

Problem:
Delete low salary employees.

*/

DECLARE @Employee TABLE
(
EmployeeID INT,
EmployeeName VARCHAR(100),
Salary DECIMAL(10,2)
);

INSERT INTO @Employee
SELECT *
FROM Employee;

DELETE
FROM @Employee
WHERE Salary<50000;

SELECT *
FROM @Employee;
