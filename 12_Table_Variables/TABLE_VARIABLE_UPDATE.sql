/*
====================================================
UPDATE TABLE VARIABLE
====================================================

Problem:
Update values in a table variable.

*/

DECLARE @Employee TABLE
(
EmployeeID INT,
EmployeeName VARCHAR(100),
Salary DECIMAL(10,2)
);

INSERT INTO @Employee
SELECT
EmployeeID,
EmployeeName,
Salary
FROM Employee;

UPDATE @Employee
SET Salary=Salary+1000;

SELECT *
FROM @Employee;
