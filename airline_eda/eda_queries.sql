--Longest departure delay by route
SELECT route, avgdepdelay FROM routes_2007_2011 GROUP BY route, avgdepdelay ORDER BY avgdepdelay DESC LIMIT 20;

SELECT route, avgdepdelay FROM routes_2012_2016 GROUP BY route, avgdepdelay ORDER BY avgdepdelay DESC LIMIT 20;


--Longest arrival delay by route
SELECT route, avgarrdelay FROM routes_2007_2011 GROUP BY route, avgarrdelay ORDER BY avgarrdelay DESC LIMIT 20;

SELECT route, avgarrdelay FROM routes_2012_2016 GROUP BY route, avgarrdelay ORDER BY avgarrdelay DESC LIMIT 20;


--Departure delay by month
SELECT month, AVG(depdelayminutes) as avgdelay
FROM routes_2012_2016 GROUP BY month
ORDER BY avgdelay DESC;


--Departure delay by month for the last 5 years
SELECT year, month, AVG(depdelayminutes) as avgdelay
  FROM routes_2012_2016 
  WHERE year = 2012
  GROUP BY year, month
  ORDER BY avgdelay DESC
  LIMIT 1
UNION ALL
  SELECT year, month, AVG(depdelayminutes) as avgdelay
  FROM routes_2012_2016 
  WHERE year = 2013
  GROUP BY year, month
  ORDER BY avgdelay DESC
  LIMIT 1
UNION ALL
  SELECT year, month, AVG(depdelayminutes) as avgdelay
  FROM routes_2012_2016 
  WHERE year = 2014
  GROUP BY year, month
  ORDER BY avgdelay DESC
  LIMIT 1
UNION ALL
  SELECT year, month, AVG(depdelayminutes) as avgdelay
  FROM routes_2012_2016 
  WHERE year = 2015
  GROUP BY year, month
  ORDER BY avgdelay DESC
  LIMIT 1
UNION ALL
  SELECT year, month, AVG(depdelayminutes) as avgdelay
  FROM routes_2012_2016 
  WHERE year = 2016
  GROUP BY year, month
  ORDER BY avgdelay DESC
  LIMIT 1;
  
  
  --Departure delay by 2 months for the last 5 years
SELECT year, month, AVG(depdelayminutes) as avgdelay
  FROM routes_2012_2016 
  WHERE year = 2012
  GROUP BY year, month
  ORDER BY avgdelay DESC
  LIMIT 2
UNION ALL
  SELECT year, month, AVG(depdelayminutes) as avgdelay
  FROM routes_2012_2016 
  WHERE year = 2013
  GROUP BY year, month
  ORDER BY avgdelay DESC
  LIMIT 2
UNION ALL
  SELECT year, month, AVG(depdelayminutes) as avgdelay
  FROM routes_2012_2016 
  WHERE year = 2014
  GROUP BY year, month
  ORDER BY avgdelay DESC
  LIMIT 2
UNION ALL
  SELECT year, month, AVG(depdelayminutes) as avgdelay
  FROM routes_2012_2016 
  WHERE year = 2015
  GROUP BY year, month
  ORDER BY avgdelay DESC
  LIMIT 2
UNION ALL
  SELECT year, month, AVG(depdelayminutes) as avgdelay
  FROM routes_2012_2016 
  WHERE year = 2016
  GROUP BY year, month
  ORDER BY avgdelay DESC
  LIMIT 2;
  
  
  
  --Departure delay by month for the last 5 years at JAC
SELECT year, month, AVG(depdelayminutes) as avgdelay
  FROM routes_2012_2016 
  WHERE year = 2012 AND (origin IN ('JAC') OR dest IN ('JAC'))
  GROUP BY year, month
  ORDER BY avgdelay DESC
  LIMIT 1
UNION ALL
  SELECT year, month, AVG(depdelayminutes) as avgdelay
  FROM routes_2012_2016 
  WHERE year = 2013 AND (origin IN ('JAC') OR dest IN ('JAC'))
  GROUP BY year, month
  ORDER BY avgdelay DESC
  LIMIT 1
UNION ALL
  SELECT year, month, AVG(depdelayminutes) as avgdelay
  FROM routes_2012_2016 
  WHERE year = 2014 AND (origin IN ('JAC') OR dest IN ('JAC'))
  GROUP BY year, month
  ORDER BY avgdelay DESC
  LIMIT 1
UNION ALL
  SELECT year, month, AVG(depdelayminutes) as avgdelay
  FROM routes_2012_2016 
  WHERE year = 2015 AND (origin IN ('JAC') OR dest IN ('JAC'))
  GROUP BY year, month
  ORDER BY avgdelay DESC
  LIMIT 1
UNION ALL
  SELECT year, month, AVG(depdelayminutes) as avgdelay
  FROM routes_2012_2016 
  WHERE year = 2016 AND (origin IN ('JAC') OR dest IN ('JAC'))
  GROUP BY year, month
  ORDER BY avgdelay DESC
  LIMIT 1;

--Monthly flight volume at JAC
SELECT month, COUNT(flightnum) as numflights
  FROM flights_2012_2016 
  WHERE (origin IN ('JAC') OR dest IN ('JAC'))
  GROUP BY month
  ORDER BY numflights DESC;
  
  
  --Busiest departing airports 2012-2016
  --Which of the top 25 busiest airports has the worst delays?
SELECT id, origin, AVG(depdelayminutes) as depdelay
  FROM busy_2007_2016
  GROUP BY id, origin
  ORDER BY depdelay DESC;
  
SELECT id, origin, AVG(arrdelayminutes) as arrdelay
  FROM busy_2007_2016
  GROUP BY id, origin
  ORDER BY arrdelay DESC;
  
 
--For the top 25 busiest airports, which months are the worst? Which days?
SELECT month, AVG(depdelayminutes) as depdelay
FROM busy_2007_2016 GROUP BY month
ORDER BY depdelay DESC;

SELECT dayofweek, AVG(depdelayminutes) as depdelay
FROM busy_2007_2016 GROUP BY dayofweek
ORDER BY depdelay DESC;
