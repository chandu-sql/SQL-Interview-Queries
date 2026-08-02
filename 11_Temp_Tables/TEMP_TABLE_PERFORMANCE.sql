/*
====================================================
TEMP TABLE PERFORMANCE
====================================================

Problem:
Store filtered data for better query performance.

*/

SELECT
    EmployeeID,
    EmployeeName,
    Salary
INTO #HighSalaryEmployees
FROM Employee
WHERE Salary > 50000;

SELECT *
FROM #HighSalaryEmployees
ORDER BY Salary DESC;

DROP TABLE #HighSalaryEmployees;
GO
