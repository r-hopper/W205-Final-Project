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