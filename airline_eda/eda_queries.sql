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
