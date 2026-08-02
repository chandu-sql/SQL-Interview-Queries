/*
====================================================
AUDIT TRIGGER
====================================================

Problem:
Maintain employee audit history.

*/

CREATE TABLE EmployeeHistory
(
    HistoryID INT IDENTITY(1,1),
    EmployeeID INT,
    EmployeeName VARCHAR(100),
    Salary DECIMAL(10,2),
    AuditType VARCHAR(20),
    AuditDate DATETIME
);
GO

CREATE TRIGGER trg_EmployeeAudit
ON Employee
AFTER INSERT, UPDATE, DELETE
AS
BEGIN

    SET NOCOUNT ON;

    IF EXISTS (SELECT 1 FROM inserted)
    BEGIN

        INSERT INTO EmployeeHistory
        (
            EmployeeID,
            EmployeeName,
            Salary,
            AuditType,
            AuditDate
        )

        SELECT
            EmployeeID,
            EmployeeName,
            Salary,
            'INSERT/UPDATE',
            GETDATE()

        FROM inserted;

    END

    IF EXISTS (SELECT 1 FROM deleted)
    BEGIN

        INSERT INTO EmployeeHistory
        (
            EmployeeID,
            EmployeeName,
            Salary,
            AuditType,
            AuditDate
        )

        SELECT
            EmployeeID,
            EmployeeName,
            Salary,
            'DELETE',
            GETDATE()

        FROM deleted;

    END

END;
GO
