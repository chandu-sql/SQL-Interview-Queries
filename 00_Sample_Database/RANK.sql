/*
====================================================
RANK
====================================================

Problem:
Rank employees based on salary.

*/

SELECT
    EmployeeName,
    Salary,
    RANK() OVER(ORDER BY Salary DESC) AS EmployeeRank
FROM Employee;
