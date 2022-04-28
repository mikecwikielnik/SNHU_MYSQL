/* 
CREATED BY: Mike Cwikielnik
DESCRIPTION: Code from Chapter 8,
SQL Quickstart Guide
*/


SELECT 
	BillingCity,
	AVG(TOTAL) [CITY AVERAGE],
	(SELECT 
		round(AVG(TOTAL),2)
	FROM 
		invoices) [GLOBAL AVG]
FROM
	invoices
GROUP BY 
	BillingCity
ORDER BY
	BillingCity
	
-- USING A WHERE CLAUSE IN A SUBQUERY

SELECT
	MAX(TOTAL)
FROM
	invoices
WHERE 
	InvoiceDate < '2013-01-01'
	
SELECT
	InvoiceDate,
	BillingCity,
	total
FROM
	invoices
WHERE
	InvoiceDate >= '2013-01-01' AND TOTAL > 
	(SELECT 
		MAX(TOTAL)
	FROM
		invoices
	WHERE
		InvoiceDate < '2013-01-01')
		
SELECT
	COUNT(TOTAL)
FROM
	invoices
WHERE
	InvoiceDate < '2010-01-01'
	
-- SUBQUERIES WITHOUT AGGREGATE FUNCTIONS

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity
FROM	
	invoices
WHERE
	InvoiceId > 55 AND InvoiceId < 60
	
SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity
FROM
	invoices
WHERE
	InvoiceDate >
(SELECT
	InvoiceDate
FROM
	invoices
WHERE
	InvoiceId = 251)
	
-- RETURNING MULTIPLE VALUES FROM A SUBQUERY

SELECT
	InvoiceDate
FROM
	invoices
WHERE
	InvoiceId IN (251, 252, 255)
	
SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity
FROM
	invoices
WHERE
	InvoiceDate IN
(SELECT
	InvoiceDate
FROM
	invoices
WHERE
	InvoiceId IN (251, 252, 255))
	
-- SUBQUERIES AND THE DISTINCT CLAUSE

SELECT	
	DISTINCT TrackId
FROM
	invoice_items
ORDER BY
	TrackId

SELECT
	TrackId,
	Composer,
	name
FROM
	tracks
WHERE
	TrackId NOT IN
(SELECT
	DISTINCT TrackId
FROM
	invoice_items)















