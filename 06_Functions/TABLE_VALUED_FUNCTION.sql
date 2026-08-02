/*
====================================================
Table Valued Function
====================================================

Problem:
Return employees earning more than given salary.

*/

CREATE FUNCTION dbo.fn_GetEmployees
(
    @Salary DECIMAL(10,2)
)

RETURNS TABLE

AS

RETURN

(
    SELECT
        EmployeeID,
        EmployeeName,
        Salary
    FROM Employee
    WHERE Salary > @Salary
);
GO

SELECT *
FROM dbo.fn_GetEmployees(50000);
