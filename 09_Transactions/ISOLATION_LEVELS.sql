/*
====================================================
TRANSACTION ISOLATION LEVELS
====================================================

Problem:
Set transaction isolation level.

*/

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
GO

BEGIN TRANSACTION;

SELECT *
FROM Employee;

COMMIT TRANSACTION;
GO
