/* 
CREATED BY: Mike Cwikielnik
DESCRIPTION: Code from Chapter 7,
What are the company’s all-time total sales?

Shields, Walter. 
SQL QuickStart Guide: The Simplified Beginner's Guide to Managing, Analyzing, and Manipulating Data With SQL (p. 230). 
ClydeBank Media LLC. Kindle Edition.  
*/

SELECT
	sum(TOTAL)
FROM
	invoices