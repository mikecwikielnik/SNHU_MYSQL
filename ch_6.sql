/* 
CREATED BY: Mike Cwikielnik
CREATED ON: 4/26/22
DESCRIPTION: Code from Chapter 6,
SQL Quickstart Guide
*/

	
SELECT 
	e.FirstName,
	e.LastName,
	e.EmployeeId,
	c.FirstName,
	c.LastName,
	c.SupportRepId,
	i.CustomerId,
	i.Total
FROM
	invoices AS i
JOIN
	customers AS c
ON
	i.CustomerId = c.CustomerId
INNER JOIN
	employees as e
ON
	c.SupportRepId = e.EmployeeId
ORDER BY
	i.Total DESC
LIMIT
	10

SELECT 
	ar.ArtistId as [ArtistId From Artists Table],
	al.ArtistId as [ArtistId From Albums Table],
	ar.Name as [Artist Name],
	al.Title as [Album Title]
FROM
	artists as ar
LEFT OUTER JOIN
	albums as al
ON
	ar.ArtistId = al.ArtistId
WHERE 
	al.ArtistId IS NULL