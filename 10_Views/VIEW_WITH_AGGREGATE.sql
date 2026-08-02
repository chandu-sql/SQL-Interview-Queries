/*
====================================================
VIEW WITH AGGREGATE
====================================================

Problem:
Department wise employee count.

*/

CREATE VIEW vw_DepartmentSummary
AS

SELECT
    D.DepartmentName,
    COUNT(E.EmployeeID) AS EmployeeCount,
    AVG(E.Salary) AS AverageSalary

FROM Department D

LEFT JOIN Employee E
ON D.DepartmentID = E.DepartmentID

GROUP BY
D.DepartmentName;
GO

SELECT *
FROM vw_DepartmentSummary;
