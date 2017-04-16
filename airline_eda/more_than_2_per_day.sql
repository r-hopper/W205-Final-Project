--Selecting origins with more than 2 departing flights per day

DROP TABLE IF EXISTS routes_working_2007_2016_volume;
DROP TABLE IF EXISTS routes_2007_2016_volume;

CREATE TABLE routes_working_2007_2016_volume AS
SELECT 
       year,
       month, 
       origin,
       dest, 
       route,
       numofflights,
       depdelayminutes,
       arrdelayminutes,
       depdelayed,
       nodepdelay,
       depdelaygreaterthan30min,
       depdelaygreaterthan1hr,
       arrdelaygreaterthan30min,
       arrdelaygreaterthan1hr,
       SUM(numofflights)/10 as flightsperyear
FROM routes_2007_2016
GROUP BY year,
       month, 
       origin,
       dest, 
       route,
       numofflights,
       depdelayminutes,
       arrdelayminutes,
       depdelayed,
       nodepdelay,
       depdelaygreaterthan30min,
       depdelaygreaterthan1hr,
       arrdelaygreaterthan30min,
       arrdelaygreaterthan1hr;
       
--Keep only airports with >2 flights per day
CREATE TABLE routes_2007_2016_volume AS
SELECT 
       year,
       month, 
       origin,
       dest, 
       route,
       numofflights,
       depdelayminutes,
       arrdelayminutes,
       depdelayed,
       nodepdelay,
       depdelaygreaterthan30min,
       depdelaygreaterthan1hr,
       arrdelaygreaterthan30min,
       arrdelaygreaterthan1hr,
       flightsperyear
FROM routes_working_2007_2016_volume
GROUP BY year,
       month, 
       origin,
       dest, 
       route,
       numofflights,
       depdelayminutes,
       arrdelayminutes,
       depdelayed,
       nodepdelay,
       depdelaygreaterthan30min,
       depdelaygreaterthan1hr,
       arrdelaygreaterthan30min,
       arrdelaygreaterthan1hr,
       flightsperyear
HAVING (SUM(flightsperyear) > 985);

DROP TABLE routes_working_2007_2016_volume;
