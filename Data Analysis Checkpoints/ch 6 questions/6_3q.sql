/* 
CREATED BY: Mike Cwikielnik
DESCRIPTION: Code from Chapter 6,
Using the genres table identified from question 1, 
create a third inner join to join to this table and include the Name field from that table in your result set.

Shields, Walter. 
SQL QuickStart Guide: The Simplified Beginner's Guide to Managing, Analyzing, and Manipulating Data With SQL (p. 183). 
ClydeBank Media LLC. Kindle Edition.  
*/


SELECT 
	t.Composer [Artist],
	g.Name [Genre],
	a.Title,
	t.name
FROM 
	albums AS A
JOIN
	tracks AS T
ON
	a.AlbumId = t.AlbumId
JOIN
	genres as G
ON
	t.GenreId = g.GenreId
WHERE
	t.Composer is not NULL