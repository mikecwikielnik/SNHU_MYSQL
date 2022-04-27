/* 
CREATED BY: Mike Cwikielnik
DESCRIPTION: Code from Chapter 6,
Create an inner join between the albums and tracks tables 
and display the album names and track names in a single result set.

Shields, Walter. 
SQL QuickStart Guide: The Simplified Beginner's Guide to Managing, Analyzing, and Manipulating Data With SQL (p. 183). 
ClydeBank Media LLC. Kindle Edition. 
*/


SELECT 
	t.Composer [artist name],
	a.Title,
	t.name
FROM 
	albums AS A
JOIN
	tracks AS T
ON
	a.AlbumId = t.AlbumId