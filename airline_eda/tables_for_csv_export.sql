--Adding route and binaries for departure delay
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

--Selecting airports where within the top 100 origins by departure volume
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


--Finding total delayed flights and minutes per weekday per origin airport from 2007 - 2016
DROP TABLE IF EXISTS delay_dayofweek;
CREATE TABLE delay_dayofweek AS
SELECT
      origin,
      dayofweek,
      SUM(depdelayminutes) AS depdelayminutes_total,
      SUM(arrdelayminutes) AS arrdelayminutes_total,
      COUNT(*) as flights_total
FROM flights_2007_2016
GROUP BY origin, dayofweek
;

--Calculating ratio of delayed minutes / flights
DROP TABLE IF EXISTS worst_dayofweek;
CREATE TABLE worst_dayofweek AS
SELECT
      origin,
      dayofweek,
      (depdelayminutes_total+arrdelayminutes_total)/flights_total AS delay_ratio
FROM delay_dayofweek
;

--Identifying day of the week with the highest ratio for each origin airport
DROP TABLE IF EXISTS worst_dayofweek_final;
CREATE TABLE worst_dayofweek_final AS
SELECT
	a.origin,
	CASE WHEN a.dayofweek = 1 THEN "Monday"
		WHEN a.dayofweek = 2 THEN "Tuesday"
		WHEN a.dayofweek = 3 THEN "Wednesday"
		WHEN a.dayofweek = 4 THEN "Thursday"
		WHEN a.dayofweek = 5 THEN "Friday"
		WHEN a.dayofweek = 6 THEN "Saturday"
		WHEN a.dayofweek = 7 THEN "Sunday"
		ELSE "Unknown" END AS worst_dayofweek
FROM worst_dayofweek a
INNER JOIN (
	SELECT
		origin,
		MAX(delay_ratio) AS delay_ratio
	FROM worst_dayofweek
	GROUP BY origin
) b
ON a.origin = b.origin
AND a.delay_ratio = b.delay_ratio
;

--Finding total delayed flights and minutes per cause per origin airport from 2007 - 2016
DROP TABLE IF EXISTS origin_delay_cause;
CREATE TABLE origin_delay_cause AS
SELECT
      origin,
      SUM(carrierdelay) AS carrierdelay_total,
      SUM(weatherdelay) AS weatherdelay_total,
      SUM(nasdelay) AS nasdelay_total,
      SUM(securitydelay) AS securitydelay_total,
      SUM(lateaircraftdelay) AS lateaircraftdelay_total,
      SUM(depdelay) AS depdelay_total,
      SUM(arrdelay) AS arrdelay_total,
      SUM(depdelayminutes) AS depdelayminutes_total,
      SUM(arrdelayminutes) AS arrdelayminutes_total,
      COUNT(*) as flights_total
FROM flights_2007_2016
GROUP BY origin
;

--Identifying delay cause with the highest total minutes per origin airport
DROP TABLE IF EXISTS origin_delay_cause_max;
CREATE TABLE origin_delay_cause_max AS
SELECT
      origin,
      CASE WHEN carrierdelay_total = GREATEST(carrierdelay_total, weatherdelay_total, nasdelay_total, securitydelay_total, lateaircraftdelay_total)
            THEN 1 ELSE 0 END AS carrierdelay_greatest,
      CASE WHEN weatherdelay_total = GREATEST(carrierdelay_total, weatherdelay_total, nasdelay_total, securitydelay_total, lateaircraftdelay_total)
            THEN 1 ELSE 0 END AS weatherdelay_greatest,
      CASE WHEN nasdelay_total = GREATEST(carrierdelay_total, weatherdelay_total, nasdelay_total, securitydelay_total, lateaircraftdelay_total)
            THEN 1 ELSE 0 END AS nasdelay_greatest,
      CASE WHEN securitydelay_total = GREATEST(carrierdelay_total, weatherdelay_total, nasdelay_total, securitydelay_total, lateaircraftdelay_total)
            THEN 1 ELSE 0 END AS securitydelay_greatest,
      CASE WHEN lateaircraftdelay_total = GREATEST(carrierdelay_total, weatherdelay_total, nasdelay_total, securitydelay_total, lateaircraftdelay_total)
            THEN 1 ELSE 0 END AS lateaircraftdelay_greatest
FROM origin_delay_cause
GROUP BY origin, carrierdelay_total, weatherdelay_total, nasdelay_total, securitydelay_total, lateaircraftdelay_total
;

--Finding total delay minutes per cause per year from 2007 - 2016
DROP TABLE IF EXISTS delay_cause_total_year;
CREATE TABLE delay_cause_total_year AS
SELECT
      year,
      CAST(SUM(carrierdelay) AS DECIMAL) AS carrierdelay_total,
      CAST(SUM(weatherdelay) AS DECIMAL)AS weatherdelay_total,
      CAST(SUM(nasdelay) AS DECIMAL) AS nasdelay_total,
      CAST(SUM(securitydelay) AS DECIMAL) AS securitydelay_total,
      CAST(SUM(lateaircraftdelay) AS DECIMAL) AS lateaircraftdelay_total
FROM flights_2007_2016
GROUP BY year
;

--Formatting most frequent delay cause per origin
DROP TABLE IF EXISTS origin_most_frequent_delay_cause;
CREATE TABLE origin_most_frequent_delay_cause AS
SELECT
      origin,
      CASE WHEN carrierdelay_greatest+weatherdelay_greatest+nasdelay_greatest+securitydelay_greatest+lateaircraftdelay_greatest <> 1 THEN "multiple"
            WHEN carrierdelay_greatest = 1 THEN "carrier_delay"
            WHEN weatherdelay_greatest = 1 THEN "weather_delay"
            WHEN nasdelay_greatest = 1 THEN "national_air_system_delay"
            WHEN securitydelay_greatest = 1 THEN "security_delay"
            WHEN lateaircraftdelay_greatest = 1 THEN "late_arriving_aircraft_delay"
            END AS most_frequent_delay_cause
FROM origin_delay_cause_max
;

--Airport arrival volume time series
drop table if exists busy_arr_airport_2016;
create table busy_arr_airport_2016 as
select DestAirportID, Dest, count(*) as RS 
from flights_2016
group by DestAirportID, Dest
order by RS desc
limit 30;

drop table if exists busy_arr_airport_2015;
create table busy_arr_airport_2015 as
select DestAirportID, Dest, count(*) as RS 
from flights_2015
group by DestAirportID, Dest
order by RS desc
limit 30;

drop table if exists busy_arr_airport_2014;
create table busy_arr_airport_2014 as
select DestAirportID, Dest, count(*) as RS 
from flights_2014
group by DestAirportID, Dest
order by RS desc
limit 30;

drop table if exists busy_arr_airport_2013;
create table busy_arr_airport_2013 as
select DestAirportID, Dest, count(*) as RS 
from flights_2013
group by DestAirportID, Dest
order by RS desc
limit 30;

drop table if exists busy_arr_airport_2012;
create table busy_arr_airport_2012 as
select DestAirportID, Dest, count(*) as RS 
from flights_2012
group by DestAirportID, Dest
order by RS desc
limit 30;

drop table if exists busy_arr_airport_2011;
create table busy_arr_airport_2011 as
select DestAirportID, Dest, count(*) as RS 
from flights_2011
group by DestAirportID, Dest
order by RS desc
limit 30;

drop table if exists busy_arr_airport_2010;
create table busy_arr_airport_2010 as
select DestAirportID, Dest, count(*) as RS 
from flights_2010
group by DestAirportID, Dest
order by RS desc
limit 30;

drop table if exists busy_arr_airport_2009;
create table busy_arr_airport_2009 as
select DestAirportID, Dest, count(*) as RS 
from flights_2009
group by DestAirportID, Dest
order by RS desc
limit 30;

drop table if exists busy_arr_airport_2008;
create table busy_arr_airport_2008 as
select DestAirportID, Dest, count(*) as RS 
from flights_2008
group by DestAirportID, Dest
order by RS desc
limit 30;

drop table if exists busy_arr_airport_2007;
create table busy_arr_airport_2007 as
select DestAirportID, Dest, count(*) as RS 
from flights_2007
group by DestAirportID, Dest
order by RS desc
limit 30;

drop table if exists top25airportsarr;
create table top25airportsarr as
select a07.DestAirportID as ID,
a16.Dest as Dest, 
a07.RS as X2007, 
a08.RS as X2008, 
a09.RS as X2009, 
a10.RS as X2010, 
a11.RS as X2011, 
a12.RS as X2012, 
a13.RS as X2013, 
a14.RS as X2014, 
a15.RS as X2015, 
a16.RS as X2016 
from busy_arr_airport_2007 a07
inner join busy_arr_airport_2008 a08
on a07.DestAirportID = a08.DestAirportID
inner join busy_arr_airport_2009 a09
on a08.DestAirportID = a09.DestAirportID
inner join busy_arr_airport_2010 a10
on a09.DestAirportID = a10.DestAirportID
inner join busy_arr_airport_2011 a11
on a10.DestAirportID = a11.DestAirportID
inner join busy_arr_airport_2012 a12
on a11.DestAirportID = a12.DestAirportID
inner join busy_arr_airport_2013 a13
on a12.DestAirportID = a13.DestAirportID
inner join busy_arr_airport_2014 a14
on a13.DestAirportID = a14.DestAirportID
inner join busy_arr_airport_2015 a15
on a14.DestAirportID = a15.DestAirportID
inner join busy_arr_airport_2016 a16
on a15.DestAirportID = a16.DestAirportID
;

--Airport departure volume time series
drop table if exists busy_dep_airport_2016;
create table busy_dep_airport_2016 as
select OriginAirportID, Origin, count(*) as RS 
from flights_2016
group by OriginAirportID, Origin
order by RS desc
limit 30;

drop table if exists busy_dep_airport_2015;
create table busy_dep_airport_2015 as
select OriginAirportID, Origin, count(*) as RS 
from flights_2015
group by OriginAirportID, Origin
order by RS desc
limit 30;

drop table if exists busy_dep_airport_2014;
create table busy_dep_airport_2014 as
select OriginAirportID, Origin, count(*) as RS 
from flights_2014
group by OriginAirportID, Origin
order by RS desc
limit 30;

drop table if exists busy_dep_airport_2013;
create table busy_dep_airport_2013 as
select OriginAirportID, Origin, count(*) as RS 
from flights_2013
group by OriginAirportID, Origin
order by RS desc
limit 30;

drop table if exists busy_dep_airport_2012;
create table busy_dep_airport_2012 as
select OriginAirportID, Origin, count(*) as RS 
from flights_2012
group by OriginAirportID, Origin
order by RS desc
limit 30;

drop table if exists busy_dep_airport_2011;
create table busy_dep_airport_2011 as
select OriginAirportID, Origin, count(*) as RS 
from flights_2011
group by OriginAirportID, Origin
order by RS desc
limit 30;

drop table if exists busy_dep_airport_2010;
create table busy_dep_airport_2010 as
select OriginAirportID, Origin, count(*) as RS 
from flights_2010
group by OriginAirportID, Origin
order by RS desc
limit 30;

drop table if exists busy_dep_airport_2009;
create table busy_dep_airport_2009 as
select OriginAirportID, Origin, count(*) as RS 
from flights_2009
group by OriginAirportID, Origin
order by RS desc
limit 30;

drop table if exists busy_dep_airport_2008;
create table busy_dep_airport_2008 as
select OriginAirportID, Origin, count(*) as RS 
from flights_2008
group by OriginAirportID, Origin
order by RS desc
limit 30;

drop table if exists busy_dep_airport_2007;
create table busy_dep_airport_2007 as
select OriginAirportID, Origin, count(*) as RS 
from flights_2007
group by OriginAirportID, Origin
order by RS desc
limit 30;


drop table if exists top25airportsdep;
create table top25airportsdep as
select a07.OriginAirportID as ID, a16.Origin as Origin, 
a07.RS as X2007,
a08.RS as X2008,
a09.RS as X2009, 
a10.RS as X2010, 
a11.RS as X2011,
a12.RS as X2012, 
a13.RS as X2013, 
a14.RS as X2014, 
a15.RS as X2015, 
a16.RS as X2016 
from busy_dep_airport_2007 a07
inner join busy_dep_airport_2008 a08
on a07.OriginAirportID = a08.OriginAirportID
inner join busy_dep_airport_2009 a09
on a08.OriginAirportID = a09.OriginAirportID
inner join busy_dep_airport_2010 a10
on a09.OriginAirportID = a10.OriginAirportID
inner join busy_dep_airport_2011 a11
on a10.OriginAirportID = a11.OriginAirportID
inner join busy_dep_airport_2012 a12
on a11.OriginAirportID = a12.OriginAirportID
inner join busy_dep_airport_2013 a13
on a12.OriginAirportID = a13.OriginAirportID
inner join busy_dep_airport_2014 a14
on a13.OriginAirportID = a14.OriginAirportID
inner join busy_dep_airport_2015 a15
on a14.OriginAirportID = a15.OriginAirportID
inner join busy_dep_airport_2016 a16
on a15.OriginAirportID = a16.OriginAirportID
;
