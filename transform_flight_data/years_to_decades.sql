--Merging years 1997-2006

DROP TABLE IF EXISTS flights_1997_2006;
CREATE TABLE flights_1997_2006 AS
SELECT * FROM flights_1997
UNION
SELECT * FROM flights_1998
UNION
SELECT * FROM flights_1999
UNION
SELECT * FROM flights_2000
UNION
SELECT * FROM flights_2001
UNION
SELECT * FROM flights_2002
UNION
SELECT * FROM flights_2003
UNION
SELECT * FROM flights_2004
UNION
SELECT * FROM flights_2005
UNION
SELECT * FROM flights_2006;


--Merging years 2007-2016.

DROP TABLE IF EXISTS flights_2007_2016;
CREATE TABLE flights_2007_2016 AS
SELECT * FROM flights_2007
UNION
SELECT * FROM flights_2008
UNION
SELECT * FROM flights_2009
UNION
SELECT * FROM flights_2010
UNION
SELECT * FROM flights_2011
UNION
SELECT * FROM flights_2012
UNION
SELECT * FROM flights_2013
UNION
SELECT * FROM flights_2014
UNION
SELECT * FROM flights_2015
UNION
SELECT * FROM flights_2016;