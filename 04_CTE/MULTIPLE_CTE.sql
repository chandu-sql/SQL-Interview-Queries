/*
====================================================
Multiple CTEs
====================================================

Problem:
Calculate department-wise total salary.

*/

WITH EmployeeData AS
(
    SELECT *
    FROM Employee
),

DepartmentSalary AS
(
    SELECT
        DepartmentID,
        SUM(Salary) AS TotalSalary
    FROM EmployeeData
    GROUP BY DepartmentID
)

SELECT *
FROM DepartmentSalary;
