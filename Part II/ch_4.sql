/* 
CREATED BY: Mike Cwikielnik
CREATED ON: 5/3/22
DESCRIPTION: Chapter 4 
*/

-- START WRITING YOUR QUERY

SELECT
	FirstName,
	LastName,
	Email
FROM
	customers

-- ADDING AN ALIAS TO YOUR FIELDS

SELECT
	FirstName [First Name],
	LastName AS 'LAST NAME',
	Email AS Email,
	Phone CELL
FROM
	customers
	
-- USING THE ORDER BY CLAUSE

SELECT
	FirstName [FIRST NAME],
	LastName [LAST NAME],
	Email [EMAIL]
FROM
	customers
ORDER BY
	LastName ASC
	
SELECT
	FirstName [FIRST NAME],
	LastName [LAST NAME],
	Email [Email]
FROM
	customers
ORDER BY
	FirstName ASC,
	LastName DESC
	
--SELECTING THE TOP TEN RECORDS USING LIMIT

SELECT
	FirstName [First Name],
	LastName [LAST NAME],
	EMAIL [EMAIL]
FROM
	customers
ORDER BY
	FirstName ASC,
	LastName DESC
LIMIT
	10
	
	