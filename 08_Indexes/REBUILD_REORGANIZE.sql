/*
====================================================
INDEX MAINTENANCE
====================================================

Problem:
Rebuild and reorganize indexes.

*/

ALTER INDEX ALL
ON Employee
REBUILD;
GO

ALTER INDEX ALL
ON Employee
REORGANIZE;
GO
