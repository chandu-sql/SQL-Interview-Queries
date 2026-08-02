/*
====================================================
CREATE VIEW
====================================================

Problem:
Create a view to display employee details.

*/

CREATE VIEW vw_EmployeeDetails
AS
SELECT
    EmployeeID,
    EmployeeName,
    Salary,
    DepartmentID
FROM Employee;
GO

SELECT *
FROM vw_EmployeeDetails;
