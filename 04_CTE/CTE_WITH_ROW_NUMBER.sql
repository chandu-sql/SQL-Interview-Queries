/*
====================================================
CTE with ROW_NUMBER
====================================================

Problem:
Display Top 3 highest paid employees.

*/

WITH RankedEmployees AS
(
    SELECT
        EmployeeName,
        Salary,
        ROW_NUMBER() OVER
        (
            ORDER BY Salary DESC
        ) AS RN
    FROM Employee
)

SELECT *
FROM RankedEmployees
WHERE RN <= 3;
