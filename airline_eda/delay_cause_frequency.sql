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