/*
====================================================
Simple CTE
====================================================

Problem:
Display employees earning more than the average salary.

*/

WITH EmployeeCTE AS
(
    SELECT *
    FROM Employee
)

SELECT *
FROM EmployeeCTE
WHERE Salary >
(
    SELECT AVG(Salary)
    FROM Employee
);
