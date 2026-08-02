/*
====================================================
Delete Duplicate Records
====================================================

Problem:
Delete duplicate employees based on EmployeeName.

*/

WITH DuplicateRows AS
(
    SELECT *,
           ROW_NUMBER() OVER
           (
               PARTITION BY EmployeeName
               ORDER BY EmployeeID
           ) AS RN
    FROM Employee
)

DELETE
FROM DuplicateRows
WHERE RN > 1;
