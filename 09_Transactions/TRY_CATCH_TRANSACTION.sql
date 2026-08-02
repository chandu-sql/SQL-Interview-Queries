/*
====================================================
TRY CATCH TRANSACTION
====================================================

Problem:
Commit if successful; rollback on error.

*/

BEGIN TRY

    BEGIN TRANSACTION;

    UPDATE Employee
    SET Salary = Salary + 1000
    WHERE EmployeeID = 101;

    SELECT 10 / 0;

    COMMIT TRANSACTION;

END TRY

BEGIN CATCH

    ROLLBACK TRANSACTION;

    SELECT
        ERROR_NUMBER() AS ErrorNumber,
        ERROR_MESSAGE() AS ErrorMessage;

END CATCH;
GO
