/* 
CREATED BY: Mike Cwikielnik
DESCRIPTION: Code from Chapter 8,
SQL Quickstart Guide
*/

-- TURNING PREVIOUS QUERIES INTO VIEWS

CREATE VIEW V_AVGTOTAL AS
SELECT
	round(AVG(TOTAL),2) [AVERAGE TOTAL]
FROM
	invoices

-- WHY WE USE VIEWS

SELECT
	InvoiceDate,
	BillingAddress,
	BillingCity,
	total
FROM
	invoices
WHERE TOTAL <
(SELECT
	*
FROM
	V_AVGTOTAL)
ORDER BY
	total DESC
	
-- CREATING A VIEW FROM JOINS

CREATE VIEW V_TRACKS_INVOICEITEMS AS
SELECT
	ii.InvoiceId,
	ii.UnitPrice,
	ii.Quantity,
	t.name,
	t.Composer,
	t.Milliseconds
FROM
	invoice_items ii
JOIN
	tracks t
on
	ii.TrackId = t.TrackId

CREATE VIEW V_INV_CUS_EMP AS
SELECT
	i.InvoiceId,
	i.InvoiceDate,
	i.total,
	i.CustomerId,
	c.FirstName,
	c.LastName,
	c.SupportRepId,
	e.EmployeeId,
	e.LastName,
	e.FirstName,
	e.Title
FROM
	invoices i
JOIN
	customers c
on
	i.CustomerId = c.CustomerId
JOIN
	employees e
on
	e.EmployeeId = c.SupportRepId
ORDER by
	InvoiceDate

SELECT * 
FROM
	V_TRACKS_INVOICEITEMS ii
JOIN
	V_INV_CUS_EMP ice
on 
	ii.InvoiceId = ice.InvoiceId
	
-- REMOVING A VIEW USING THE DROP STATEMENT

DROP VIEW
	V_AVGTOTAL
	
	
	
	
	
	
	
	
	
	
	
	
	
	


