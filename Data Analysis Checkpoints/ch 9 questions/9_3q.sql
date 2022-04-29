/* 
CREATED BY: Mike Cwikielnik
DESCRIPTION: Code from Chapter 8,

Save this new query as a view called V_CityAvgVsGlobalAvg.

Shields, Walter. 
SQL QuickStart Guide: The Simplified Beginner's Guide to Managing, Analyzing, and Manipulating Data With SQL (p. 265). 
ClydeBank Media LLC. Kindle Edition. 
*/

CREATE VIEW V_CITYAVGVSGLOBALAVG AS
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