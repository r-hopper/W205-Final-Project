#!/bin/bash

# Run airline queries in hive

hive -e 'set hive.cli.print.header=true; SELECT route, AVG(depdelayminutes) as avgdepdelay FROM routes_2007_2016 GROUP BY route
ORDER BY avgdepdelay DESC LIMIT 25'| sed 's/[\t]/,/g' > dep_delay_route.csv

hive -e 'set hive.cli.print.header=true; SELECT route, AVG(arrdelayminutes) as avgarrdelay FROM routes_2007_2016 GROUP BY route
ORDER BY avgarrdelay DESC LIMIT 25' | sed 's/[\t]/,/g' > arr_delay_route.csv

hive -e 'set hive.cli.print.header=true; SELECT origin, SUM(depdelayed)/SUM(numofflights) as delayprop, 
SUM(numofflights)/10 as flightsperyear
FROM top100_routes_2007_2016_del
GROUP BY origin
HAVING (SUM(numofflights)/10 > 985)
ORDER BY delayprop DESC LIMIT 25' | sed 's/[\t]/,/g' > highest_delay_prop.csv

hive -e 'set hive.cli.print.header=true; SELECT origin, SUM(longdelay)/SUM(numofflights) as delayprop, 
SUM(numofflights)/10 as flightsperyear
FROM top100_routes_2007_2016_del
GROUP BY origin
HAVING (SUM(numofflights)/10 > 985)
ORDER BY delayprop DESC LIMIT 25' | sed 's/[\t]/,/g' > highest_long_delay_prop.csv

hive -e 'set hive.cli.print.header=true; select * from worst_dayofweek_final' | sed 's/[\t]/,/g'  > worst_dayofweek_final.csv

hive -e 'set hive.cli.print.header=true; select * from origin_most_frequent_delay_cause' | sed 's/[\t]/,/g'  > origin_most_frequent_delay_cause.csv

hive -e 'set hive.cli.print.header=true; select * from delay_cause_total_year' | sed 's/[\t]/,/g'  > delay_cause_total_year.csv

cd ..
mv airline_eda/dep_delay_route.csv flight_app/final_csv/dep_delay_route.csv
mv airline_eda/arr_delay_route.csv flight_app/final_csv/arr_delay_route.csv
mv airline_eda/highest_delay_prop.csv flight_app/final_csv/highest_delay_prop.csv
mv airline_eda/highest_long_delay_prop.csv flight_app/final_csv/highest_long_delay_prop.csv
mv airline_eda/worst_dayofweek_final.csv flight_app/final_csv/worst_dayofweek_final.csv
mv airline_eda/origin_most_frequent_delay_cause.csv flight_app/final_csv/origin_most_frequent_delay_cause.csv
mv airline_eda/delay_cause_total_year.csv flight_app/final_csv/delay_cause_total_year.csv
