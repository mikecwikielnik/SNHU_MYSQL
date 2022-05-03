/* 
CREATED BY: Mike Cwikielnik
CREATED ON: 5/3/22
DESCRIPTION: Chapter 6 
*/

-- WHAT ARE JOINS?

SELECT 
	*
FROM
	invoices
JOIN
	customers
ON
	invoices.CustomerId = customers.CustomerId
	
-- USING JOINS WITH AN ALIAS

SELECT
	*
FROM
	invoices
JOIN
	customers
ON invoices.CustomerId = customers.CustomerId

SELECT
	*
FROM
	invoices AS I
JOIN
	customers AS C
ON
	I.CustomerId = C.CustomerId

SELECT
	c.LastName,
	c.FirstName,
	i.InvoiceId,
	i.CustomerId,
	i.InvoiceDate,
	i.total
FROM
	invoices as i
JOIN
	customers as c
ON
	i.CustomerId = c.CustomerId
ORDER BY
	c.LastName

-- INNER JOIN

SELECT
	*
FROM
	invoices AS i
JOIN
	customers as c
ON
	i.CustomerId = c.CustomerId
	
SELECT
	i.InvoiceId,
	c.CustomerId,
	c.LastName,
	c.Address,
	i.InvoiceDate,
	i.BillingAddress,
	i.total
FROM
	invoices as i
JOIN
	customers as c
on
	i.CustomerId = c.CustomerId
	
-- LEFT OUTER JOIN

SELECT
	*
FROM
	invoices AS i
LEFT OUTER JOIN customers as c
ON i.CustomerId = c.CustomerId

SELECT
	i.InvoiceId,
	c.CustomerId,
	c.LastName,
	c.Address,
	i.InvoiceDate,
	i.BillingAddress,
	i.total
FROM
	invoices as i
LEFT OUTER JOIN
	customers as c
ON
	i.CustomerId = c.CustomerId

/* SQLite doesn't support right outer joins */

-- INNER JOINS WITH MORE THAN TWO TABLES

SELECT
	e.FirstName,
	e.LastName,
	e.EmployeeId,
	c.FirstName,
	c.LastName,
	c.SupportRepId,
	i.CustomerId,
	i.total
FROM
	invoices as i
JOIN
	customers as c
ON
	i.CustomerId = c.CustomerId
JOIN
	employees as e
ON
	c.SupportRepId = e.EmployeeId
ORDER BY
	i.total DESC
LIMIT 10

--  USING LEFT OUTER JOINS WITH NULL, IS, AND NOT

SELECT
	ar.ArtistId as [id from artists],
	al.ArtistId as [id from albums],
	ar.name as [name],
	al.Title as [title]
FROM
	artists as ar
LEFT OUTER JOIN
	albums as al
on
	ar.ArtistId = al.ArtistId

SELECT
	ar.ArtistId [id from artists],
	al.ArtistId [id from albums],
	ar.name [name],
	al.Title [album]
FROM
	artists as ar
LEFT OUTER JOIN
	albums as al
on
	ar.ArtistId = al.ArtistId
WHERE
	al.ArtistId is NULL





