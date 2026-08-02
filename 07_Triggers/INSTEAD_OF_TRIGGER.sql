/*
====================================================
INSTEAD OF TRIGGER
====================================================

Problem:
Prevent accidental deletes.

*/

CREATE TRIGGER trg_InsteadOfDelete
ON Employee
INSTEAD OF DELETE
AS
BEGIN

    PRINT 'Delete operation is not allowed.';

END;
GO
