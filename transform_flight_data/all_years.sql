--Merging years 2007-2016.

DROP TABLE IF EXISTS flights_2007_2016;
CREATE TABLE flights_2007_2016 AS
SELECT * FROM flights_2007
UNION ALL
SELECT * FROM flights_2008
UNION ALL
SELECT * FROM flights_2009
UNION ALL
SELECT * FROM flights_2010
UNION ALL
SELECT * FROM flights_2011
UNION ALL
SELECT * FROM flights_2012
UNION ALL
SELECT * FROM flights_2013
UNION ALL
SELECT * FROM flights_2014
UNION ALL
SELECT * FROM flights_2015
UNION ALL
SELECT * FROM flights_2016;