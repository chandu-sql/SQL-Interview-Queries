/*
====================================================
SCD TYPE 1
====================================================

Problem:
Overwrite existing values.

*/

MERGE Employee AS Target
USING SourceEmployee AS Source
ON Target.EmployeeID=Source.EmployeeID

WHEN MATCHED THEN

UPDATE
SET

Target.EmployeeName=Source.EmployeeName,
Target.Salary=Source.Salary,
Target.DepartmentID=Source.DepartmentID;

GO
