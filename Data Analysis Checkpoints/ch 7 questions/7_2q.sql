/* 
CREATED BY: Mike Cwikielnik
DESCRIPTION: Code from Chapter 7,
What are the average annual sales generated 
by customers from the USA from all years of data available?

Shields, Walter. 
SQL QuickStart Guide: The Simplified Beginner's Guide to Managing, Analyzing, and Manipulating Data With SQL (p. 230). 
ClydeBank Media LLC. Kindle Edition. 
*/

--not the answer to the question 
--but seemed more fun & insightful

SELECT
	C.CustomerId,
	C.FirstName,
	sum(I.total) [top customers]
FROM
	customers as c
JOIN
	invoices as i
on
	c.CustomerId = i.CustomerId
GROUP BY
	c.CustomerId 
ORDER BY
	sum(i.total) DESC


	
--below is the actual answer to the question

SELECT
	BillingCountry,
	round(avg(TOTAL),4)
FROM
	invoices
WHERE
	BillingCountry = 'USA'