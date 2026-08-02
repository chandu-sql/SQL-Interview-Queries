/*
====================================================
TRY CATCH
====================================================

Problem:
Handle SQL errors gracefully.

*/

BEGIN TRY

    SELECT 100 / 0;

END TRY

BEGIN CATCH

    SELECT
        ERROR_NUMBER() AS ErrorNumber,
        ERROR_MESSAGE() AS ErrorMessage,
        ERROR_LINE() AS ErrorLine;

END CATCH;
