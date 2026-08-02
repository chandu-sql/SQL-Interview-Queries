/*
====================================================
LEAD
====================================================

Problem:
Compare current salary with next salary.

*/

SELECT
    EmployeeName,
    Salary,
    LEAD(Salary) OVER(ORDER BY Salary DESC) AS NextSalary
FROM Employee;
