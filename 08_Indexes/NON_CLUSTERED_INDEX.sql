/*
====================================================
NON CLUSTERED INDEX
====================================================

Problem:
Create a non-clustered index on EmployeeName.

*/

CREATE NONCLUSTERED INDEX IX_Employee_Name
ON Employee(EmployeeName);
GO
