DROP TABLE IF EXISTS routes_2007;
CREATE TABLE routes_2007 AS
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
       ELSE "0" END AS nodepdelay,
       CASE WHEN (depdelayminutes>60) THEN "1"
       ELSE "0" END AS longdelay
FROM flights_2007
GROUP BY year, 
         month,
         origin,
         dest, 
         concat(origin, "_", dest),
         depdelayminutes,
         arrdelayminutes
;

DROP TABLE IF EXISTS top100_routes_2007;
CREATE TABLE top100_routes_2007 AS 
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
FROM routes_2007
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

DROP TABLE IF EXISTS routes_2008;
CREATE TABLE routes_2008 AS
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
       ELSE "0" END AS nodepdelay,
       CASE WHEN (depdelayminutes>60) THEN "1"
       ELSE "0" END AS longdelay
FROM flights_2008
GROUP BY year, 
         month,
         origin,
         dest, 
         concat(origin, "_", dest),
         depdelayminutes,
         arrdelayminutes
;

DROP TABLE IF EXISTS top100_routes_2008;
CREATE TABLE top100_routes_2008 AS 
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
FROM routes_2008
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

DROP TABLE IF EXISTS routes_2009;
CREATE TABLE routes_2009 AS
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
       ELSE "0" END AS nodepdelay,
       CASE WHEN (depdelayminutes>60) THEN "1"
       ELSE "0" END AS longdelay
FROM flights_2009
GROUP BY year, 
         month,
         origin,
         dest, 
         concat(origin, "_", dest),
         depdelayminutes,
         arrdelayminutes
;

DROP TABLE IF EXISTS top100_routes_2009;
CREATE TABLE top100_routes_2009 AS 
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
FROM routes_2009
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

DROP TABLE IF EXISTS routes_2010;
CREATE TABLE routes_2010 AS
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
       ELSE "0" END AS nodepdelay,
       CASE WHEN (depdelayminutes>60) THEN "1"
       ELSE "0" END AS longdelay
FROM flights_2010
GROUP BY year, 
         month,
         origin,
         dest, 
         concat(origin, "_", dest),
         depdelayminutes,
         arrdelayminutes
;

DROP TABLE IF EXISTS top100_routes_2010;
CREATE TABLE top100_routes_2010 AS 
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
FROM routes_2010
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

DROP TABLE IF EXISTS routes_2011;
CREATE TABLE routes_2011 AS
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
       ELSE "0" END AS nodepdelay,
       CASE WHEN (depdelayminutes>60) THEN "1"
       ELSE "0" END AS longdelay
FROM flights_2011
GROUP BY year, 
         month,
         origin,
         dest, 
         concat(origin, "_", dest),
         depdelayminutes,
         arrdelayminutes
;

DROP TABLE IF EXISTS top100_routes_2011;
CREATE TABLE top100_routes_2011 AS 
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
FROM routes_2011
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

DROP TABLE IF EXISTS routes_2012;
CREATE TABLE routes_2012 AS
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
       ELSE "0" END AS nodepdelay,
       CASE WHEN (depdelayminutes>60) THEN "1"
       ELSE "0" END AS longdelay
FROM flights_2012
GROUP BY year, 
         month,
         origin,
         dest, 
         concat(origin, "_", dest),
         depdelayminutes,
         arrdelayminutes
;

DROP TABLE IF EXISTS top100_routes_2012;
CREATE TABLE top100_routes_2012 AS 
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
FROM routes_2012
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

DROP TABLE IF EXISTS routes_2013;
CREATE TABLE routes_2013 AS
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
       ELSE "0" END AS nodepdelay,
       CASE WHEN (depdelayminutes>60) THEN "1"
       ELSE "0" END AS longdelay
FROM flights_2013
GROUP BY year, 
         month,
         origin,
         dest, 
         concat(origin, "_", dest),
         depdelayminutes,
         arrdelayminutes
;

DROP TABLE IF EXISTS top100_routes_2013;
CREATE TABLE top100_routes_2013 AS 
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
FROM routes_2013
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


DROP TABLE IF EXISTS routes_2014;
CREATE TABLE routes_2014 AS
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
       ELSE "0" END AS nodepdelay,
       CASE WHEN (depdelayminutes>60) THEN "1"
       ELSE "0" END AS longdelay
FROM flights_2014
GROUP BY year, 
         month,
         origin,
         dest, 
         concat(origin, "_", dest),
         depdelayminutes,
         arrdelayminutes
;

DROP TABLE IF EXISTS top100_routes_2014;
CREATE TABLE top100_routes_2014 AS 
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
FROM routes_2014
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

DROP TABLE IF EXISTS routes_2015;
CREATE TABLE routes_2015 AS
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
       ELSE "0" END AS nodepdelay,
       CASE WHEN (depdelayminutes>60) THEN "1"
       ELSE "0" END AS longdelay
FROM flights_2015
GROUP BY year, 
         month,
         origin,
         dest, 
         concat(origin, "_", dest),
         depdelayminutes,
         arrdelayminutes
;

DROP TABLE IF EXISTS top100_routes_2015;
CREATE TABLE top100_routes_2015 AS 
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
FROM routes_2015
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

DROP TABLE IF EXISTS routes_2016;
CREATE TABLE routes_2016 AS
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
       ELSE "0" END AS nodepdelay,
       CASE WHEN (depdelayminutes>60) THEN "1"
       ELSE "0" END AS longdelay
FROM flights_2016
GROUP BY year, 
         month,
         origin,
         dest, 
         concat(origin, "_", dest),
         depdelayminutes,
         arrdelayminutes
;

DROP TABLE IF EXISTS top100_routes_2016;
CREATE TABLE top100_routes_2016 AS 
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
FROM routes_2016
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

