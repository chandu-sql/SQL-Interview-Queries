/*
====================================================
Stored Procedure with Output Parameter
====================================================

Problem:
Return employee count.

*/

CREATE PROCEDURE usp_GetEmployeeCount
(
    @EmployeeCount INT OUTPUT
)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        @EmployeeCount = COUNT(*)
    FROM Employee;
END;
GO

DECLARE @Count INT;

EXEC usp_GetEmployeeCount
     @EmployeeCount = @Count OUTPUT;

SELECT @Count AS TotalEmployees;
