/* 
CREATED BY: Mike Cwikielnik
DESCRIPTION: Code from Chapter 8,

SELECT
   BillingCity,
   AVG(Total) AS [City Average],
   (select 
      avg(total) 
   from 
      invoices) AS [Global Average]
FROM
   invoices
GROUP BY
   BillingCity
ORDER BY 
   BillingCity

Take the inner query (by itself) from this SELECT statement and create a view from it. Save the view as V_GlobalAverage.

Shields, Walter. 
SQL QuickStart Guide: The Simplified Beginner's Guide to Managing, Analyzing, and Manipulating Data With SQL (p. 265). 
ClydeBank Media LLC. Kindle Edition. 
*/

CREATE VIEW V_GLOBALAVERAGE AS
SELECT 
	avg(total) 
FROM
	invoices
