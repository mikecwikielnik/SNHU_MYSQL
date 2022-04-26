/* 
CREATED BY: Mike Cwikielnik
CREATED ON: 4/26/22
DESCRIPTION: Code from Chapter 6,
SQL Quickstart Guide
*/

SELECT 
	* 
FROM 
	invoices
INNER JOIN 
	customers
ON
	INVOICES.CustomerId = customers.CustomerId
	
