--Selecting origins with more than 2 departing flights per day

DROP TABLE IF EXISTS routes_working_2007_2016_volume;
DROP TABLE IF EXISTS routes_2007_2016_volume;

CREATE TABLE routes_working_2007_2016_volume AS
SELECT SUM(numofflights)/10 as flightsperyear,
* FROM routes_2007_2016
GROUP BY *;
