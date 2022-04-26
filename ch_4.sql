/* 
CREATED BY: Mike Cwikielnik
CREATED ON: 4/26/22
DESCRIPTION: This queury selects the first name, 
last name, and email from the customers table, 
ordered by first name (ascending), then last name 
(descending)
*/

SELECT 
	FirstName as 'First Name',
	LastName [Last Name],
	Email as Email,
	Phone Cell,
	Company Work,
	PostalCode
FROM 
	customers
--ORDER BY
	---FirstName ASC,


