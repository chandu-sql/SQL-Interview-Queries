/*
====================================================
PIVOT
====================================================

Problem:
Display department-wise average salary.

*/

SELECT *
FROM
(
    SELECT
        EmployeeName,
        DepartmentID,
        Salary
    FROM Employee
) AS SourceTable

PIVOT
(
    AVG(Salary)
    FOR DepartmentID IN
    (
        [1],
        [2],
        [3],
        [4]
    )
) AS PivotTable;
GO
