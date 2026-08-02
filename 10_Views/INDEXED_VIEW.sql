/*
====================================================
INDEXED VIEW
====================================================

Problem:
Create an indexed view.

*/

CREATE VIEW dbo.vw_EmployeeSalary
WITH SCHEMABINDING
AS

SELECT
    EmployeeID,
    Salary
FROM dbo.Employee;
GO

CREATE UNIQUE CLUSTERED INDEX IX_vw_EmployeeSalary
ON dbo.vw_EmployeeSalary(EmployeeID);
GO

SELECT *
FROM dbo.vw_EmployeeSalary;
