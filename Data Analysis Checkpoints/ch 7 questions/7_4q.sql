/* 
CREATED BY: Mike Cwikielnik
DESCRIPTION: Code from Chapter 7,
Who are the top ten best customers from a revenue standpoint?
Hint: you will need to use a join (chapter 6) to answer this question.

Shields, Walter. 
SQL QuickStart Guide: The Simplified Beginner's Guide to Managing, Analyzing, and Manipulating Data With SQL (p. 230). 
ClydeBank Media LLC. Kindle Edition.  
*/


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
LIMIT
	10