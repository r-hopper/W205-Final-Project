--Separate years into pre- and post-9/11 data.
--Includes 2001, because most of the year is pre-9/11.

DROP TABLE IF EXISTS flights_pre_911;
CREATE TABLE flights_pre_911 AS
SELECT * FROM flights_1997_1
UNION
SELECT * FROM flights_1998
UNION
SELECT * FROM flights_1999
UNION
SELECT * FROM flights_2000
UNION
SELECT * FROM flights_2001;
