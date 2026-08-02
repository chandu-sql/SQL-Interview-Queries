/*
====================================================
SAVE TRANSACTION
====================================================

Problem:
Rollback to a savepoint.

*/

BEGIN TRANSACTION;

UPDATE Employee
SET Salary = Salary + 1000
WHERE EmployeeID = 101;

SAVE TRANSACTION SalaryUpdated;

UPDATE Employee
SET Salary = Salary + 2000
WHERE EmployeeID = 102;

ROLLBACK TRANSACTION SalaryUpdated;

COMMIT TRANSACTION;
GO
