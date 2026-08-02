/*
====================================================
GROUP BY
====================================================

Problem:
Display the number of employees in each department.

*/

SELECT
Department,
COUNT(*) AS EmployeeCount
FROM Employee
GROUP BY Department;
