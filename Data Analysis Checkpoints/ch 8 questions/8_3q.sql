/* 
CREATED BY: Mike Cwikielnik
DESCRIPTION: Code from Chapter 8,
How many of these customers are from the USA?

Shields, Walter. 
SQL QuickStart Guide: The Simplified Beginner's Guide to Managing, Analyzing, and Manipulating Data With SQL (p. 250). 
ClydeBank Media LLC. Kindle Edition. 
*/

SELECT
	i.total,
	i.CustomerId,
	i.InvoiceId,
	i.InvoiceDate,
	c.FirstName,
	c.LastName,
	i.BillingAddress,
	i.BillingCity,
	i.BillingCountry
FROM
	invoices as i
JOIN
	customers as c
on 
	i.CustomerId = c.CustomerId
WHERE
	BillingCountry = 'USA' and Total > 
		(SELECT
			avg(total)
		FROM
			invoices
		WHERE
			InvoiceDate BETWEEN '2010-01-01' and '2010-12-31')