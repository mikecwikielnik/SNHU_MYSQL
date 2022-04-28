/* 
CREATED BY: Mike Cwikielnik
DESCRIPTION: Code from Chapter 8,
Who are the customers responsible for these invoices?

Shields, Walter. 
SQL QuickStart Guide: The Simplified Beginner's Guide to Managing, Analyzing, and Manipulating Data With SQL (p. 250). 
ClydeBank Media LLC. Kindle Edition. 
*/

SELECT
	i.total,
	i.CustomerId,
	c.FirstName,
	c.LastName,
	i.InvoiceDate,
	i.InvoiceId
FROM
	invoices as i
JOIN
	customers as c
on
	i.CustomerId = c.CustomerId
WHERE
	TOTAL >
(SELECT
	avg(TOTAL)
FROM	
	invoices
WHERE
	InvoiceDate BETWEEN '2010-01-01' AND '2010-12-31')