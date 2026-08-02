/*
====================================================
Sales Report
====================================================

Problem:
Generate yearly sales summary.

*/

CREATE TABLE Sales
(
YearNo INT,
Amount DECIMAL(10,2)
);

INSERT INTO Sales
VALUES
(2024,500000),
(2025,620000),
(2026,750000);

SELECT
YearNo,
Amount
FROM Sales
ORDER BY YearNo;
GO
