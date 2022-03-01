/*USE insurify;
SELECT age, has_insurance AS [insured], came_from AS [source], reached_end AS [end] FROM rates
WHERE (reached_end = 1
AND has_insurance = 1)*/

-- below yields the count that someone has insurance and submits an application
USE insurify;
SELECT COUNT(came_from) AS COUNTED, came_from AS SOURCE FROM rates
WHERE (has_insurance = 1
AND reached_end = 1)
GROUP BY came_from
ORDER BY COUNTED DESC


--below yields the count that someone (regardless of insurance status) submits an application 

USE insurify;
SELECT COUNT(came_from) AS COUNTED, came_from AS SOURCE FROM rates
WHERE (has_insurance = 0
OR has_insurance = 1
AND reached_end = 1)
GROUP BY came_from
ORDER BY COUNTED DESC

--it is clear that the company should focus on insurance site B for quality applications. 
--insurance site c yields the most applications regardless of insurance status. 
--the drawback for insurance site c is that they may not be quality applications. 