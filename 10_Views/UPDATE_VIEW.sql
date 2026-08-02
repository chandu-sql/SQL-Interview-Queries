/*
====================================================
UPDATE VIEW
====================================================

Problem:
Update employee salary through a view.

*/

UPDATE vw_EmployeeDetails
SET Salary = 70000
WHERE EmployeeID = 101;

SELECT *
FROM vw_EmployeeDetails;
