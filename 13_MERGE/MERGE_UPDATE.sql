/*
====================================================
MERGE - UPDATE
====================================================

Problem:
Update existing employees.

*/

MERGE Employee AS Target
USING SourceEmployee AS Source
ON Target.EmployeeID = Source.EmployeeID

WHEN MATCHED THEN

UPDATE
SET

Target.EmployeeName=Source.EmployeeName,
Target.Salary=Source.Salary,
Target.DepartmentID=Source.DepartmentID,
Target.ManagerID=Source.ManagerID;
GO
