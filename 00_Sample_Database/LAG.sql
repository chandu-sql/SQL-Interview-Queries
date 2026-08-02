/*
====================================================
LAG
====================================================

Problem:
Compare current salary with previous salary.

*/

SELECT
    EmployeeName,
    Salary,
    LAG(Salary) OVER(ORDER BY Salary DESC) AS PreviousSalary
FROM Employee;
