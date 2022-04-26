/* 
CREATED BY: Mike Cwikielnik
CREATED ON: 4/26/22
DESCRIPTION: Code from Chapter 5,
Data Analysis Checkpoint 1
SQL Quickstart Guide
*/

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	Total,
	CASE
	WHEN BillingCountry = 'USA' THEN 'DOMESTIC SALES'
	ELSE 'FOREIGN SALES'
	END AS SALESTYPE
FROM
	invoices
ORDER BY 
	BillingCity

