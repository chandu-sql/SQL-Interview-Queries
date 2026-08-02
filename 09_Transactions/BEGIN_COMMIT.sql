/*
====================================================
BEGIN TRANSACTION & COMMIT
====================================================

Problem:
Transfer salary between two employees.

*/

BEGIN TRANSACTION;

UPDATE Employee
SET Salary = Salary - 5000
WHERE EmployeeID = 101;

UPDATE Employee
SET Salary = Salary + 5000
WHERE EmployeeID = 102;

COMMIT TRANSACTION;
GO
