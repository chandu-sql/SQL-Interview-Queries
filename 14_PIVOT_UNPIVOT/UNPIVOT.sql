/*
====================================================
UNPIVOT
====================================================

Problem:
Convert columns into rows.

*/

CREATE TABLE EmployeeSalary
(
    EmployeeName VARCHAR(100),
    JanSalary DECIMAL(10,2),
    FebSalary DECIMAL(10,2),
    MarSalary DECIMAL(10,2)
);

INSERT INTO EmployeeSalary
VALUES
('John',50000,51000,52000),
('David',45000,46000,47000);

SELECT
EmployeeName,
MonthName,
Salary
FROM EmployeeSalary

UNPIVOT
(
Salary
FOR MonthName IN
(
JanSalary,
FebSalary,
MarSalary
)
) U;
GO
