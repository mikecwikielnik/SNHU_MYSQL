/* 
CREATED BY: Mike Cwikielnik
CREATED ON: 4/26/22
DESCRIPTION: Code from Chapter 5,
Data Analysis Checkpoint 2
Order this data by the new field SalesType.

Shields, Walter. 
SQL QuickStart Guide: The Simplified Beginner's Guide to Managing, Analyzing, and Manipulating Data With SQL (p. 142). 
ClydeBank Media LLC. Kindle Edition. 
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
	SALESTYPE

