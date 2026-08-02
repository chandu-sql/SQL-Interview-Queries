/*
====================================================
Dynamic SQL
====================================================

Problem:
Retrieve all employees dynamically.

*/

DECLARE @SQL NVARCHAR(MAX);

SET @SQL =
'
SELECT
    EmployeeID,
    EmployeeName,
    Salary
FROM Employee
';

EXEC sp_executesql @SQL;
