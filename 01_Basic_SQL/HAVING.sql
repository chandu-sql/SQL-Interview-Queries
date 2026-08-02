/*
====================================================
HAVING Clause
====================================================

Problem:
Display departments having more than 5 employees.

*/

SELECT
Department,
COUNT(*) AS EmployeeCount
FROM Employee
GROUP BY Department
HAVING COUNT(*) > 5;
