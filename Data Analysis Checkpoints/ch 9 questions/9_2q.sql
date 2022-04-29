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
   

Remove the subquery from the above code entirely and substitute it for your newly created view V_GlobalAverage.

Shields, Walter. 
SQL QuickStart Guide: The Simplified Beginner's Guide to Managing, Analyzing, and Manipulating Data With SQL (p. 265). 
ClydeBank Media LLC. Kindle Edition. 
*/

SELECT
   BillingCity,
   AVG(Total) AS [City Average],
   (SELECT
		*
	FROM
		V_GLOBALAVERAGE) [Global Avg]
FROM
   invoices
GROUP BY
   BillingCity
ORDER BY 
   BillingCity
