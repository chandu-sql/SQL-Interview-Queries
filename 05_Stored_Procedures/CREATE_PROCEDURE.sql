/*
====================================================
Create Stored Procedure
====================================================

Problem:
Create a stored procedure to retrieve all employees.

*/

CREATE PROCEDURE usp_GetEmployees
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        EmployeeID,
        EmployeeName,
        Salary,
        DepartmentID
    FROM Employee;
END;
GO

EXEC usp_GetEmployees;
