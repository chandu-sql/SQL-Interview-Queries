/*
====================================================
Function with Parameter
====================================================

Problem:
Return monthly bonus.

*/

CREATE FUNCTION dbo.fn_Bonus
(
@Salary DECIMAL(10,2)
)

RETURNS DECIMAL(10,2)

AS

BEGIN

RETURN @Salary*0.10;

END;
GO

SELECT
EmployeeName,
Salary,
dbo.fn_Bonus(Salary) AS Bonus
FROM Employee;
