/* 
CREATED BY: Mike Cwikielnik
DESCRIPTION: Code from Chapter 8,
How many invoices exceed the average invoice amount generated in 2010?

Shields, Walter. 
SQL QuickStart Guide: The Simplified Beginner's Guide to Managing, Analyzing, and Manipulating Data With SQL (p. 250). 
ClydeBank Media LLC. Kindle Edition. 
*/

SELECT
	count(TOTAL)
FROM
	invoices
WHERE
	TOTAL >
(SELECT
	avg(TOTAL)
FROM	
	invoices
WHERE
	InvoiceDate BETWEEN '2010-01-01' AND '2010-12-31')