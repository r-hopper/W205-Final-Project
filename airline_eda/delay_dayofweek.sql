DROP TABLE IF EXISTS delay_dayofweek;
CREATE TABLE delay_dayofweek AS
SELECT
      origin,
      dayofweek,
      SUM(depdelayminutes) AS depdelayminutes_total,
      SUM(arrdelayminutes) AS arrdelayminutes_total,
      COUNT(*) as flights_total
FROM flights_2012_2016
GROUP BY origin, dayofweek
;

DROP TABLE IF EXISTS worst_dayofweek;
CREATE TABLE worst_dayofweek AS
SELECT
      origin,
      dayofweek,
      (depdelayminutes_total+arrdelayminutes_total)/flights_total AS delay_ratio
FROM delay_dayofweek
;