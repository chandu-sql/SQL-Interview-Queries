/*
====================================================
INDEX ON TEMP TABLE
====================================================

Problem:
Improve query performance using indexes.

*/

CREATE TABLE #EmployeeIndex
(
    EmployeeID INT,
    EmployeeName VARCHAR(100),
    Salary DECIMAL(10,2)
);

INSERT INTO #EmployeeIndex
SELECT
    EmployeeID,
    EmployeeName,
    Salary
FROM Employee;

CREATE CLUSTERED INDEX IX_TempEmployee
ON #EmployeeIndex(EmployeeID);

SELECT *
FROM #EmployeeIndex;

DROP TABLE #EmployeeIndex;
GO
