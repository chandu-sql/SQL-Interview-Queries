/*
====================================================
Monthly Salary Report
====================================================

Problem:
Generate department-wise monthly report.

*/

SELECT
DepartmentID,
COUNT(*) AS Employees,
AVG(Salary) AS AverageSalary,
SUM(Salary) AS TotalSalary
FROM Employee
GROUP BY DepartmentID;
GO
