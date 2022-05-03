/* 
CREATED BY: Mike Cwikielnik
CREATED ON: 5/3/22
DESCRIPTION: Chapter 5 
*/

-- COMMPARISON, LOGICAL, AND ARITHMETIC OPERATORS

SELECT
	total AS [ORIGINAL AMOUNT],
	total + 10 AS [ADD],
	total - 10 AS [SUBTRACT],
	total / 10 AS [DIVISION],
	total * 10 AS [MULTIPLICATION],
	total % 10 AS [MODULO]
FROM
	invoices
ORDER BY
	total DESC
	
-- FILTERING RECORDS BY NUMBERS WITH THE WHERE CLAUSE

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	invoices
WHERE
	total = 1.98
ORDER BY
	InvoiceDate
	
SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	invoices
WHERE
	total BETWEEN 1.98 AND 5.00
ORDER BY
	InvoiceDate
	
SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	invoices
WHERE
	total IN (1.98, 3.96)
ORDER BY
	InvoiceDate
	
-- FILTERING RECORDS BY TEXT

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	invoices
WHERE
	BillingCity = 'Boston'
ORDER BY
	total
	
SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	invoices
WHERE
	BillingCity IN ('Boston', 'Paris', 'New York')
ORDER BY
	total

/* IN ASKS FOR SPECIFIC VALUES/STRINGS */

-- USING THE LIKE OPERATOR TO SEARCH FOR WILDCARDS 

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	invoices
WHERE
	BillingCity like 'B%'
ORDER BY
	total
	
SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	invoices
WHERE
	BillingCity NOT LIKE '%T%'
ORDER BY
	total

-- FILTERING RECORDS BY DATE 

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	invoices
WHERE
	InvoiceDate = '2009-01-03 00:00:00'
ORDER BY
	total

-- THE DATE() FUNCTION

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	invoices
WHERE
	DATE(INVOICEDATE) = '2009-01-03'
ORDER BY 
	total

-- USING THE AND & OR OPERATORS WITH TWO SEPARATE FIELDS

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	invoices
WHERE
	date(INVOICEDATE) > '2010-01-02' AND total <3
ORDER BY
	total

-- THE OR OPERATOR

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	invoices
WHERE
	BillingCity LIKE 'P%' OR BillingCity LIKE 'D%'
ORDER BY
	total
	
-- USING PARENTHESES WITH AND & OR TO SPECIFY THE ORDER OF OPERATIONS

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	invoices
WHERE
	total > 1.98 AND BillingCity LIKE 'P%' OR 
	BillingCity LIKE 'D%'
ORDER BY
	total
	
SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	invoices
WHERE
	total > 1.98 AND (BillingCity LIKE 'P%' OR BillingCity LIKE 'D%')
ORDER BY
	total
	
-- THE CASE STATEMENT

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total,
	CASE
	WHEN total < 2.00 THEN 'BASELINE PURCHASE'
	WHEN total BETWEEN 2.00 AND 6.99 THEN 'LOW PURCHASE'
	WHEN total BETWEEN 7.00 AND 15.00 THEN 'TARGET PURCHASE'
	ELSE 'TOP PERFORMERS'
	END AS [PURCHASE TYPE]
FROM
	invoices
ORDER BY
	BillingCity

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total,
	CASE
	WHEN total < 2.00 THEN 'BASELINE PURCHASE'
	WHEN total BETWEEN 2.00 AND 6.99 THEN 'LOW PURCHASE'
	WHEN total BETWEEN 7.00 AND 15.00 THEN 'TARGET PURCHASE'
	ELSE 'TOP PERFORMERS'
	END AS [PURCHASETYPE]
FROM
	invoices
WHERE
	PURCHASETYPE = 'TOP PERFORMERS'
ORDER BY
	BillingCity










	
	
	