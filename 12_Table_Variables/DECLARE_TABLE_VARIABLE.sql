/*
====================================================
DECLARE TABLE VARIABLE
====================================================

Problem:
Store employee records using a table variable.

*/

DECLARE @EmployeeTable TABLE
(
    EmployeeID INT,
    EmployeeName VARCHAR(100),
    Salary DECIMAL(10,2)
);

INSERT INTO @EmployeeTable
SELECT
    EmployeeID,
    EmployeeName,
    Salary
FROM Employee;

SELECT *
FROM @EmployeeTable;

/*
When to Use:
- Small datasets
- Inside stored procedures
- No need for statistics
*/
