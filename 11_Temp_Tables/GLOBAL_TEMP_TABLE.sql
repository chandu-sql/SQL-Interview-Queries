/*
====================================================
GLOBAL TEMP TABLE
====================================================

Problem:
Share temporary data across multiple sessions.

*/

CREATE TABLE ##EmployeeGlobal
(
    EmployeeID INT,
    EmployeeName VARCHAR(100),
    DepartmentID INT
);

INSERT INTO ##EmployeeGlobal
SELECT
    EmployeeID,
    EmployeeName,
    DepartmentID
FROM Employee;

SELECT *
FROM ##EmployeeGlobal;

DROP TABLE ##EmployeeGlobal;
GO
