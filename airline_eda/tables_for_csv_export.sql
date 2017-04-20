DROP TABLE IF EXISTS routes_working_2007_2016;

CREATE TABLE routes_working_2007_2016 AS
SELECT year, 
       month,
       origin,
       dest, 
       count(*) AS numofflights,
       concat(origin, "_", dest) AS route,
       depdelayminutes,
       arrdelayminutes,
       CASE WHEN depdelayminutes > 0 THEN "1"
       ELSE "0" END AS depdelayed,
       CASE WHEN depdelayminutes > 0 THEN "1"
       ELSE "0" END AS nodepdelay
FROM flights_2007_2016
GROUP BY year, 
         month,
         origin,
         dest, 
         concat(origin, "_", dest),
         depdelayminutes,
         arrdelayminutes
;

DROP TABLE IF EXISTS routes_2007_2016;
CREATE TABLE routes_2007_2016 AS 
SELECT year,
       month, 
       origin,
       dest, 
       route,
       numofflights,
       depdelayminutes,
       arrdelayminutes,
       depdelayed,
       nodepdelay,
       CASE WHEN AVG(depdelayminutes) > 30 THEN "Y"
       ELSE "N" END AS depdelaygreaterthan30min,
       CASE WHEN AVG(depdelayminutes) > 60 THEN "Y"
       ELSE "N" END AS depdelaygreaterthan1hr,
       CASE WHEN AVG(arrdelayminutes) > 30 THEN "Y"
       ELSE "N" END AS arrdelaygreaterthan30min,
       CASE WHEN AVG(arrdelayminutes) > 60 THEN "Y"
       ELSE "N" END AS arrdelaygreaterthan1hr
FROM routes_working_2007_2016
GROUP BY year,
       month, 
       origin,
       dest, 
       route,
       numofflights,
       depdelayminutes,
       arrdelayminutes,
       depdelayed,
       nodepdelay
;


DROP TABLE IF EXISTS routes_2007_2016_del;
CREATE TABLE routes_2007_2016_del AS 
SELECT year,
       month, 
       origin,
       dest, 
       route,
       numofflights,
       depdelayminutes,
       arrdelayminutes,
       depdelayed,
       nodepdelay,
       CASE WHEN depdelaygreaterthan1hr=="Y" THEN "1"
       ELSE "0" END AS longdelay
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
       arrdelaygreaterthan1hr
;

DROP TABLE IF EXISTS top100_routes_2007_2016_del;
CREATE TABLE top100_routes_2007_2016_del AS 
SELECT year,
       month, 
       origin,
       dest, 
       route,
       numofflights,
       depdelayminutes,
       arrdelayminutes,
       depdelayed,
       nodepdelay,
       longdelay
FROM routes_2007_2016_del
WHERE origin IN ('ATL','ORD','DFW','DEN','LAX','PHX','IAH','SFO','LAS','DTW','MSP','CLT','MCO','EWR','SLC','BOS','SEA','JFK',
'LGA','BWI','MDW','PHL','SAN','DCA','MIA','TPA','FLL','IAD','STL','BNA','HOU','PDX','HNL','DAL','OAK','CLE','MCI','MEM','RDU',
'CVG','SMF','SJC','AUS','SNA','MSY','SAT','MKE','PIT','IND','ABQ','CMH','RSW','JAX','BUR','ONT','PBI','SJU','BDL','BUF','OMA',
'OGG','OKC','TUS','TUL','RNO','ELP','BHM','ANC','RIC','PVD','SDF','LIT','ORF','CHS','BOI','LGB','DSM','KOA','GRR','LIH','DAY','MHT','XNA',
'GEG','COS','FAT','TYS','PSP','ROC','ICT','ALB','MSN','SAV','SBA','JAN','GSO','GSP','HPN','PNS','SYR')
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
       longdelay
;

DROP TABLE routes_working_2007_2016; 
