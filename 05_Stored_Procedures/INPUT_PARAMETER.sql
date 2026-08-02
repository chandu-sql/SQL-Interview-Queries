/*
====================================================
Stored Procedure with Input Parameter
====================================================

Problem:
Retrieve employee details using EmployeeID.

*/

CREATE PROCEDURE usp_GetEmployeeByID
(
    @EmployeeID INT
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        EmployeeID,
        EmployeeName,
        Salary,
        DepartmentID
    FROM Employee
    WHERE EmployeeID = @EmployeeID;
END;
GO

EXEC usp_GetEmployeeByID @EmployeeID = 101;
