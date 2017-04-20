hive -e 'set hive.cli.print.header=true; select * from worst_dayofweek_final' | sed 's/[\t]/,/g'  > /home/w205/W205-Final-Project/exporting_query_results/worst_dayofweek_final.csv
hive -e 'set hive.cli.print.header=true; select * from origin_most_frequent_delay_cause' | sed 's/[\t]/,/g'  > /home/w205/W205-Final-Project/exporting_query_results/origin_most_frequent_delay_cause.csv
hive -e 'set hive.cli.print.header=true; select * from delay_cause_total_year' | sed 's/[\t]/,/g'  > /home/w205/W205-Final-Project/exporting_query_results/delay_cause_total_year.csv
