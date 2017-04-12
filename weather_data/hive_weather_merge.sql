-- Merging yearly weather data

DROP TABLE IF EXISTS weather_all;
CREATE TABLE weather_all AS
SELECT station_id, date_yyyymmdd, weather_type, magnitude
FROM weather_2007
UNION ALL
SELECT station_id, date_yyyymmdd, weather_type, magnitude
FROM weather_2008
UNION ALL
SELECT station_id, date_yyyymmdd, weather_type, magnitude
FROM weather_2009
UNION ALL
SELECT station_id, date_yyyymmdd, weather_type, magnitude
FROM weather_2010
UNION ALL
SELECT station_id, date_yyyymmdd, weather_type, magnitude
FROM weather_2011
UNION ALL
SELECT station_id, date_yyyymmdd, weather_type, magnitude
FROM weather_2012
UNION ALL
SELECT station_id, date_yyyymmdd, weather_type, magnitude
FROM weather_2013
UNION ALL
SELECT station_id, date_yyyymmdd, weather_type, magnitude
FROM weather_2014
UNION ALL
SELECT station_id, date_yyyymmdd, weather_type, magnitude
FROM weather_2015
UNION ALL
SELECT station_id, date_yyyymmdd, weather_type, magnitude
FROM weather_2016
UNION ALL
SELECT station_id, date_yyyymmdd, weather_type, magnitude
FROM weather_2017;


-- Join airport codes to precipitation data

DROP TABLE IF EXISTS precip;
CREATE TABLE precip AS
SELECT AIRPORT, weather_all.station_id, date_yyyymmdd, weather_type, magnitude
FROM weather_all, airports_stations
WHERE weather_type = PRCP or weather_type = SNWD or weather_type = SNOW
and weather_all.station_id = airports_stations.station_id;
