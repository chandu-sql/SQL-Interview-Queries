/*
====================================================
MERGE - INSERT
====================================================

Problem:
Insert new employees from SourceEmployee into Employee.

*/

MERGE Employee AS Target
USING SourceEmployee AS Source
ON Target.EmployeeID = Source.EmployeeID

WHEN NOT MATCHED THEN

INSERT
(
    EmployeeID,
    EmployeeName,
    Salary,
    DepartmentID,
    ManagerID
)

VALUES
(
    Source.EmployeeID,
    Source.EmployeeName,
    Source.Salary,
    Source.DepartmentID,
    Source.ManagerID
);
GO
