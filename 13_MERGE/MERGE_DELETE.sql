/*
====================================================
MERGE - DELETE
====================================================

Problem:
Delete employees missing from source.

*/

MERGE Employee AS Target
USING SourceEmployee AS Source
ON Target.EmployeeID=Source.EmployeeID

WHEN NOT MATCHED BY SOURCE THEN

DELETE;
GO
