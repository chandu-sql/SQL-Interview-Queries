/*
====================================================
AFTER INSERT TRIGGER
====================================================

Problem:
Log newly inserted employees.

*/

CREATE TABLE EmployeeAudit
(
    AuditID INT IDENTITY(1,1),
    EmployeeID INT,
    EmployeeName VARCHAR(100),
    ActionType VARCHAR(20),
    ActionDate DATETIME
);
GO

CREATE TRIGGER trg_AfterInsertEmployee
ON Employee
AFTER INSERT
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
        'INSERT',
        GETDATE()

    FROM inserted;

END;
GO
