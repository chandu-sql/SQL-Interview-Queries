/*
====================================================
AFTER UPDATE TRIGGER
====================================================

Problem:
Track updated employees.

*/

CREATE TRIGGER trg_AfterUpdateEmployee
ON Employee
AFTER UPDATE
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
        'UPDATE',
        GETDATE()

    FROM inserted;

END;
GO
