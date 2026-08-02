/*
====================================================
ROLLBACK TRANSACTION
====================================================

Problem:
Rollback changes if an error occurs.

*/

BEGIN TRANSACTION;

UPDATE Employee
SET Salary = Salary + 1000
WHERE EmployeeID = 101;

ROLLBACK TRANSACTION;
GO
