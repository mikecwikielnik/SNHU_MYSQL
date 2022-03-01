--USE test;
--SELECT MOSTYPE, MGEMLEEF, MOSHOOFD FROM "3-3 Milestone Two Introduction"


USE test;
SELECT MOSTYPE as [Cust subtype], COUNT(MGEMLEEF) AS [count age], AVG(MGEMLEEF) as [avg age],
	COUNT(MOSHOOFD) as [count cust type], AVG(MOSHOOFD) as [avg cust type] FROM "3-3 Milestone Two Introduction"
GROUP BY MOSTYPE
ORDER BY MOSTYPE

