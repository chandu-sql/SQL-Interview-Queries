/*
====================================================
TABLE VARIABLE JOIN
====================================================

Problem:
Join a table variable with Department.

*/

DECLARE @EmployeeTable TABLE
(
    EmployeeID INT,
    EmployeeName VARCHAR(100),
    DepartmentID INT
);

INSERT INTO @EmployeeTable
SELECT
EmployeeID,
EmployeeName,
DepartmentID
FROM Employee;

SELECT
E.EmployeeName,
D.DepartmentName
FROM @EmployeeTable E
INNER JOIN Department D
ON E.DepartmentID=D.DepartmentID;

/*
When to Use:
- Temporary joins
- Small lookup datasets
*/
