--Longest departure delay by route
SELECT route, AVG(depdelayminutes) as avgdepdelay FROM routes_2007_2016 GROUP BY route
ORDER BY avgdepdelay DESC LIMIT 25;

--Longest arrival delay by route
SELECT route, AVG(arrdelayminutes) as avgarrdelay FROM routes_2007_2016 GROUP BY route
ORDER BY avgarrdelay DESC LIMIT 25;

--Airports with Highest Percentage of Delayed Flights (threshold for min number of flights)
--Airports with >2 flights per day -- eliminates 33% of distinct origins
SELECT origin, SUM(depdelayed)/SUM(numofflights) as delayprop, SUM(numofflights)/10 as flightsperyear
FROM top100_routes_2007_2016_del
GROUP BY origin
HAVING (SUM(numofflights)/10 > 985)
ORDER BY delayprop DESC LIMIT 25;

--Airports with Highest Percentage of Long Delayed Flights (threshold for min number of flights)
SELECT origin, SUM(longdelay)/SUM(numofflights) as delayprop, SUM(numofflights)/10 as flightsperyear
FROM top100_routes_2007_2016_del
GROUP BY origin
HAVING (SUM(numofflights)/10 > 985)
ORDER BY delayprop DESC LIMIT 25;
