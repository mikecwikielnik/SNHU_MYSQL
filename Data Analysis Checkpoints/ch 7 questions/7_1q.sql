/* 
CREATED BY: Mike Cwikielnik
DESCRIPTION: Code from Chapter 7,
Create a single-line mailing list for all US customers, 
ncluding capitalized full names
and full addresses with five-digit zip codes,
in the following format:

Shields, Walter. 
SQL QuickStart Guide: The Simplified Beginner's Guide to Managing, Analyzing, and Manipulating Data With SQL (p. 230). 
ClydeBank Media LLC. Kindle Edition. 
*/

SELECT
	upper(FirstName) ||' '|| upper(LastName) ||' '||
	Address ||', '|| City ||', '|| State
	||' '|| Country ||' '|| substr(PostalCode, 1, 5)[Customer List]
FROM 
	customers
WHERE
	Country = 'USA'
	