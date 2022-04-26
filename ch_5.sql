/* 
CREATED BY: Mike Cwikielnik
CREATED ON: 4/26/22
DESCRIPTION: Code from Chapter 5,
SQL Quickstart Guide
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	Total,
	CASE
	WHEN TOTAL < 2.00 THEN 'Baseline Purchase'
	WHEN TOTAL BETWEEN 2.00 AND 6.99 THEN 'Low
	Purchase'
	WHEN TOTAL BETWEEN 7.00 AND 15.00 THEN 'Target
	Purchase'
	ELSE 'Top Performers'
	END AS PurchaseType
FROM
	invoices
WHERE PurchaseType = 'Top Performers'
ORDER BY 
	BillingCity

