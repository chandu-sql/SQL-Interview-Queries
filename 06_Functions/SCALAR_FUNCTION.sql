/*
====================================================
Scalar Function
====================================================

Problem:
Return annual salary.

*/

CREATE FUNCTION dbo.fn_AnnualSalary
(
    @Salary DECIMAL(10,2)
)
RETURNS DECIMAL(10,2)
AS
BEGIN

    RETURN @Salary * 12;

END;
GO

SELECT
EmployeeName,
Salary,
dbo.fn_AnnualSalary(Salary) AS AnnualSalary
FROM Employee;
