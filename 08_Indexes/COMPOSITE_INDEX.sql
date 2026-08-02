/*
====================================================
COMPOSITE INDEX
====================================================

Problem:
Create an index on DepartmentID and Salary.

*/

CREATE NONCLUSTERED INDEX IX_Employee_Department_Salary
ON Employee
(
    DepartmentID,
    Salary
);
GO
