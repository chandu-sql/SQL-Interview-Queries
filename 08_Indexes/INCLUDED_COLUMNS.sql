/*
====================================================
INDEX WITH INCLUDED COLUMNS
====================================================

Problem:
Cover common queries.

*/

CREATE NONCLUSTERED INDEX IX_Employee_Covering
ON Employee(EmployeeName)
INCLUDE
(
    Salary,
    DepartmentID
);
GO
