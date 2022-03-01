/* 


big difference here is in the first one, we have type then count(type) then group by type
 in the following example, we counted the whole total. This is something we got alot when we were trying to figure out
 how to get the first example. The first example showed up how to get the tally for each type. 


*/ 

USE test;
SELECT type, count(type) from avocado
GROUP BY type

use test;
select count(type) from avocado 
