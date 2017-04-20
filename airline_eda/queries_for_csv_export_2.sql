--Longest departure delay by route
SELECT route, AVG(depdelayminutes) as avgdepdelay, year FROM routes_2007_2016 GROUP BY route, year
ORDER BY avgdepdelay DESC LIMIT 25;

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
