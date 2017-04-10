DROP TABLE IF EXISTS routes_working_2007_2011;
DROP TABLE IF EXISTS routes_working_2012_2016;

CREATE TABLE routes_working_2007_2011 AS
SELECT year, 
       month,
       origin,
       dest, 
       count(*) AS numofflights,
       concat(origin, "_", dest) AS route,
       depdelayminutes,
       arrdelayminutes,
       MIN(depdelayminutes) AS mindepdelay,
       MAX(depdelayminutes) AS maxdepdelay,
       AVG(depdelayminutes) AS avgdepdelay,
       STDDEV_POP(depdelayminutes) AS stdevdepdelay,
       MIN(arrdelayminutes) AS minarrdelay,
       MAX(arrdelayminutes) AS maxarrdelay,
       AVG(arrdelayminutes) AS avgarrdelay,
       STDDEV_POP(arrdelayminutes) AS stdevarrdelay
FROM flights_2007_2011
GROUP BY year, 
         month,
         origin,
         dest, 
         concat(origin, "_", dest),
         depdelayminutes,
         arrdelayminutes
;

CREATE TABLE routes_working_2012_2016 AS
SELECT year, 
       month,
       origin,
       dest, 
       count(*) AS numofflights,
       concat(origin, "_", dest) AS route,
       depdelayminutes,
       arrdelayminutes,
       MIN(depdelayminutes) AS mindepdelay,
       MAX(depdelayminutes) AS maxdepdelay,
       AVG(depdelayminutes) AS avgdepdelay,
       STDDEV_POP(depdelayminutes) AS stdevdepdelay,
       MIN(arrdelayminutes) AS minarrdelay,
       MAX(arrdelayminutes) AS maxarrdelay,
       AVG(arrdelayminutes) AS avgarrdelay,
       STDDEV_POP(arrdelayminutes) AS stdevarrdelay
FROM flights_2012_2016
GROUP BY year, 
         month,
         origin,
         dest, 
         concat(origin, "_", dest),
         depdelayminutes,
         arrdelayminutes
;

DROP TABLE IF EXISTS routes_2007_2011;
CREATE TABLE routes_2007_2011 AS 
SELECT year,
       month, 
       origin,
       dest, 
       route,
       depdelayminutes,
       arrdelayminutes,
       mindepdelay,
       maxdepdelay,
       avgdepdelay,
       stdevdepdelay,
       CASE WHEN avgdepdelay > 30 THEN "Y"
       ELSE "N" END AS depdelaygreaterthan30min,
       CASE WHEN avgdepdelay > 60 THEN "Y"
       ELSE "N" END AS depdelaygreaterthan1hr,
       minarrdelay,
       maxarrdelay,
       avgarrdelay,
       stdevarrdelay,
       CASE WHEN avgarrdelay > 30 THEN "Y"
       ELSE "N" END AS arrdelaygreaterthan30min,
       CASE WHEN avgarrdelay > 60 THEN "Y"
       ELSE "N" END AS arrdelaygreaterthan1hr
FROM routes_working_2007_2011
ORDER BY avgarrdelay DESC
;

DROP TABLE IF EXISTS routes_2012_2016;
CREATE TABLE routes_2012_2016 AS 
SELECT year,
       month, 
       origin,
       dest, 
       route,       
       depdelayminutes,
       arrdelayminutes,
       mindepdelay,
       maxdepdelay,
       avgdepdelay,
       stdevdepdelay,
       CASE WHEN avgdepdelay > 30 THEN "Y"
       ELSE "N" END AS depdelaygreaterthan30min,
       CASE WHEN avgdepdelay > 60 THEN "Y"
       ELSE "N" END AS depdelaygreaterthan1hr,
       minarrdelay,
       maxarrdelay,
       avgarrdelay,
       stdevarrdelay,
       CASE WHEN avgarrdelay > 30 THEN "Y"
       ELSE "N" END AS arrdelaygreaterthan30min,
       CASE WHEN avgarrdelay > 60 THEN "Y"
       ELSE "N" END AS arrdelaygreaterthan1hr
FROM routes_working_2012_2016
ORDER BY avgarrdelay DESC
;

DROP TABLE routes_working_2007_2011; 
DROP TABLE routes_working_2012_2016; 
