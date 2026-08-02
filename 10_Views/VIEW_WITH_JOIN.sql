/*
====================================================
VIEW WITH JOIN
====================================================

Problem:
Display employees with department names.

*/

CREATE VIEW vw_EmployeeDepartment
AS
SELECT
    E.EmployeeID,
    E.EmployeeName,
    E.Salary,
    D.DepartmentName
FROM Employee E
INNER JOIN Department D
ON E.DepartmentID = D.DepartmentID;
GO

SELECT *
FROM vw_EmployeeDepartment;
