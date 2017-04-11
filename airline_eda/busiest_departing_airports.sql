--Busiest departing airports 2007-2016

DROP TABLE IF EXISTS busy_2007_2016;
CREATE TABLE busy_2007_2016 AS 
SELECT id,
       year,
       month, 
       origin,
       dest, 
       route,
       depdelayminutes,
       arrdelayminutes,
       CASE WHEN AVG(depdelayminutes) > 30 THEN "Y"
       ELSE "N" END AS depdelaygreaterthan30min,
       CASE WHEN AVG(depdelayminutes) > 60 THEN "Y"
       ELSE "N" END AS depdelaygreaterthan1hr,
       CASE WHEN AVG(arrdelayminutes) > 30 THEN "Y"
       ELSE "N" END AS arrdelaygreaterthan30min,
       CASE WHEN AVG(arrdelayminutes) > 60 THEN "Y"
       ELSE "N" END AS arrdelaygreaterthan1hr
FROM flights_2007_2016
ORDER BY avgdepdelay DESC
;
