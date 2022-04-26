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
	Total 
FROM
	invoices
Where 
	BillingCity like 'M%'
Order By 
	Total 

