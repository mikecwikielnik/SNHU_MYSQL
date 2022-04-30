/* 
CREATED BY: Mike Cwikielnik
DESCRIPTION: Code from Chapter 10,
Remove this customer from the database.

Shields, Walter. 
SQL QuickStart Guide: The Simplified Beginner's Guide to Managing, Analyzing, and Manipulating Data With SQL (p. 278). 
ClydeBank Media LLC. Kindle Edition.  
*/


SELECT
*
FROM
customers
WHERE
CustomerId = 60

DELETE FROM
customers
WHERE CustomerId = 60