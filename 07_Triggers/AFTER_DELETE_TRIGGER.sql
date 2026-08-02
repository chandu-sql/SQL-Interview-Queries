/*
====================================================
AFTER DELETE TRIGGER
====================================================

Problem:
Track deleted employees.

*/

CREATE TRIGGER trg_AfterDeleteEmployee
ON Employee
AFTER DELETE
AS
BEGIN

    SET NOCOUNT ON;

    INSERT INTO EmployeeAudit
    (
        EmployeeID,
        EmployeeName,
        ActionType,
        ActionDate
    )

    SELECT
        EmployeeID,
        EmployeeName,
        'DELETE',
        GETDATE()

    FROM deleted;

END;
GO
