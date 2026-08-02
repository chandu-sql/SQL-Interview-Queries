/*
====================================================
DENSE_RANK
====================================================

Problem:
Assign dense ranks to employees.

*/

SELECT
    EmployeeName,
    Salary,
    DENSE_RANK() OVER(ORDER BY Salary DESC) AS DenseRank
FROM Employee;
