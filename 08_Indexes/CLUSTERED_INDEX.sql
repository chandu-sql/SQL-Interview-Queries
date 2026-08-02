/*
====================================================
CLUSTERED INDEX
====================================================

Problem:
Create a clustered index on EmployeeID.

*/

CREATE CLUSTERED INDEX IX_Employee_EmployeeID
ON Employee(EmployeeID);
GO
