#!/bin/bash

# Run airline queries in hive

hive -e 'SELECT route, AVG(depdelayminutes) as avgdepdelay FROM routes_2007_2016 GROUP BY route
ORDER BY avgdepdelay DESC LIMIT 25' > dep_delay_route.tsv

hive -e 'SELECT route, AVG(arrdelayminutes) as avgarrdelay FROM routes_2007_2016 GROUP BY route
ORDER BY avgarrdelay DESC LIMIT 25' > arr_delay_route.tsv

hive -e 'SELECT origin, SUM(depdelayed)/SUM(numofflights) as delayprop, SUM(numofflights)/10 as flightsperyear
FROM top100_routes_2007_2016_del
GROUP BY origin
HAVING (SUM(numofflights)/10 > 985)
ORDER BY delayprop DESC LIMIT 25' > highest_delay_prop.tsv

hive -e 'SELECT origin, SUM(longdelay)/SUM(numofflights) as delayprop, SUM(numofflights)/10 as flightsperyear
FROM top100_routes_2007_2016_del
GROUP BY origin
HAVING (SUM(numofflights)/10 > 985)
ORDER BY delayprop DESC LIMIT 25' > highest_long_delay_prop.tsv
