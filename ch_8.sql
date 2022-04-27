/* 
CREATED BY: Mike Cwikielnik
DESCRIPTION: Code from Chapter 8,
SQL Quickstart Guide
*/


SELECT 
	BillingCity,
	AVG(TOTAL) [CITY AVERAGE],
	(SELECT 
		round(AVG(TOTAL),2)
	FROM 
		invoices) [GLOBAL AVG]
FROM
	invoices
GROUP BY 
	BillingCity
ORDER BY
	BillingCity