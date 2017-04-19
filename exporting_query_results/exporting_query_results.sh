hive -e 'select * from origin_delay_cause' > /home/w205/W205-Final-Project/airline_eda/results/origin_delay_cause.tsv
hive -e 'select * from origin_delay_cause_max' > /home/w205/W205-Final-Project/airline_eda/results/origin_delay_cause_max.tsv
hive -e 'select * from delay_cause_total' > /home/w205/W205-Final-Project/airline_eda/results/delay_cause_total.tsv
hive -e 'select * from delay_cause_total_year' > /home/w205/W205-Final-Project/airline_eda/results/delay_cause_total_year.tsv
hive -e 'select * from worst_dayofweek' > /home/w205/W205-Final-Project/airline_eda/results/worst_dayofweek.tsv