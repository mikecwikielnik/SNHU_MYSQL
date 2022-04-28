/* 
CREATED BY: Mike Cwikielnik
DESCRIPTION: Code from Chapter 7,
SQL Quickstart Guide
*/

SELECT 
	BillingCountry,
	BillingCity,
	round(avg(total), 2) [AVG]
FROM
	invoices
GROUP BY
	BillingCountry, 
	BillingCity
ORDER BY
	BillingCountry

