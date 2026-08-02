/*
====================================================
Multi Statement Table Function
====================================================

Problem:
Return IT department employees.

*/

CREATE FUNCTION dbo.fn_ITEmployees()

RETURNS @Employees TABLE
(
    EmployeeID INT,
    EmployeeName VARCHAR(100),
    Salary DECIMAL(10,2)
)

AS

BEGIN

INSERT INTO @Employees

SELECT
EmployeeID,
EmployeeName,
Salary
FROM Employee
WHERE DepartmentID=1;

RETURN;

END;
GO

SELECT *
FROM dbo.fn_ITEmployees();
