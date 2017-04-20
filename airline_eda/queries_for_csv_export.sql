--Longest departure delay by route
SELECT route, avgdepdelay FROM routes_2007_2016 GROUP BY route, avgdepdelay ORDER BY avgdepdelay DESC LIMIT 20;

--Longest arrival delay by route
SELECT route, avgarrdelay FROM routes_2007_2016 GROUP BY route, avgarrdelay ORDER BY avgarrdelay DESC LIMIT 20;

--Top 100 airports by volume
create table busy_dep_airport_2016 as
select OriginAirportID, Origin, count(*) as RS 
from flights_2016
group by OriginAirportID, Origin
order by RS desc
limit 30;

create table busy_dep_airport_2015 as
select OriginAirportID, Origin, count(*) as RS 
from flights_2015
group by OriginAirportID, Origin
order by RS desc
limit 30;

create table busy_dep_airport_2014 as
select OriginAirportID, Origin, count(*) as RS 
from flights_2014
group by OriginAirportID, Origin
order by RS desc
limit 30;

create table busy_dep_airport_2013 as
select OriginAirportID, Origin, count(*) as RS 
from flights_2013
group by OriginAirportID, Origin
order by RS desc
limit 30;

create table busy_dep_airport_2012 as
select OriginAirportID, Origin, count(*) as RS 
from flights_2012
group by OriginAirportID, Origin
order by RS desc
limit 30;


create table busy_dep_airport_2011 as
select OriginAirportID, Origin, count(*) as RS 
from flights_2011
group by OriginAirportID, Origin
order by RS desc
limit 30;


create table busy_dep_airport_2010 as
select OriginAirportID, Origin, count(*) as RS 
from flights_2010
group by OriginAirportID, Origin
order by RS desc
limit 30;


create table busy_dep_airport_2009 as
select OriginAirportID, Origin, count(*) as RS 
from flights_2009
group by OriginAirportID, Origin
order by RS desc
limit 30;


create table busy_dep_airport_2008 as
select OriginAirportID, Origin, count(*) as RS 
from flights_2008
group by OriginAirportID, Origin
order by RS desc
limit 30;


create table busy_dep_airport_2007 as
select OriginAirportID, Origin, count(*) as RS 
from flights_2007
group by OriginAirportID, Origin
order by RS desc
limit 30;

select a07.OriginAirportID, a16.Origin, a07.RS, a08.RS, a09.RS, a10.RS, a11.RS, a12.RS, a13.RS, a14.RS, a15.RS, a16.RS 
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
on a15.OriginAirportID = a16.OriginAirportID;

--Airports with Highest Percentage of Delayed Flights (threshold for min number of flights)
--Airports with >2 flights per day -- eliminates 33% of distinct origins
SELECT origin, SUM(depdelayed)/SUM(numofflights) as delayprop, SUM(numofflights)/10 as flightsperyear
FROM top100_routes_2007_2016
GROUP BY origin
HAVING (SUM(numofflights)/10 > 985)
ORDER BY delayprop DESC LIMIT 25;


--Airports with Highest Percentage of Long Delayed Flights (threshold for min number of flights)
SELECT origin, SUM(longdelay)/SUM(numofflights) as delayprop, SUM(numofflights)/10 as flightsperyear
FROM top100_routes_2007_2016_del
GROUP BY origin
HAVING (SUM(numofflights)/10 > 985)
ORDER BY delayprop DESC LIMIT 25;
