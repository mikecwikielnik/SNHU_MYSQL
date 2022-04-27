/* 
CREATED BY: Mike Cwikielnik
DESCRIPTION: Code from Chapter 7,
SQL Quickstart Guide
*/

SELECT 
	sum(total) as [total sales],
	avg(total) as [avg invoice],
	count(total) as [invoices count],
	max(total) as [invoice max]
FROM
	invoices


