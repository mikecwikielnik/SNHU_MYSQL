USE test;
select EVENT_TYPE, COUNT(EVENT_TYPE) AS 'NUMBER' from "final storm"
where (STATE= 'Massachusetts' 
and CZ_NAME= 'DUKES')
group by EVENT_TYPE
order by 'NUMBER' desc

USE test;
select EVENT_TYPE, COUNT(EVENT_TYPE) AS 'NUMBER' from "final storm"
where STATE= 'Massachusetts'
group by EVENT_TYPE
order by 'NUMBER' desc
