/*
====================================================
DYNAMIC PIVOT
====================================================

Problem:
Create pivot dynamically.

*/

DECLARE @Columns NVARCHAR(MAX);
DECLARE @SQL NVARCHAR(MAX);

SET @Columns='[1],[2],[3],[4]';

SET @SQL='

SELECT *

FROM
(
SELECT
DepartmentID,
Salary
FROM Employee
) S

PIVOT
(
AVG(Salary)
FOR DepartmentID IN ('+@Columns+')
) P';

EXEC sp_executesql @SQL;
GO
