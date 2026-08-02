/*
====================================================
TEMP TABLE VS CTE
====================================================

Problem:
Store high-salary employees in a temp table instead of a CTE.

*/

SELECT
    EmployeeID,
    EmployeeName,
    Salary
INTO #Employees
FROM Employee
WHERE Salary > 50000;

SELECT *
FROM #Employees;

DROP TABLE #Employees;
GO
