/*
====================================================
LOCAL TEMP TABLE
====================================================

Problem:
Store employee details temporarily for the current session.

*/

CREATE TABLE #EmployeeTemp
(
    EmployeeID INT,
    EmployeeName VARCHAR(100),
    Salary DECIMAL(10,2)
);

INSERT INTO #EmployeeTemp
SELECT
    EmployeeID,
    EmployeeName,
    Salary
FROM Employee;

SELECT *
FROM #EmployeeTemp;

DROP TABLE #EmployeeTemp;
GO
