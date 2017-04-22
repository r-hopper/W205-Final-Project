#!/bin/bash

# Run all weather related queries in hive
hive -f weather_queries.sql
hive -f weather_delay_queries.sql
hive -f Q1_precip_days_ann.sql
hive -f Q2_likelihood_month.sql
hive -f Q3_likelihood_based_on_depth.sql

# Export metric query results to tsv files for use in R dashboard
hive -e 'select * from Q1_precip_days' > Q1_precip_days_ann.tsv
hive -e 'select * from likelihood_monthly_pivot' > Q2_likelihood_month.tsv
hive -e 'select * from delay_depth' > Q3_likelihood_based_on_depth.tsv

# Move files to appropriate location
cd ..
mv weather_investigation/Q1_precip_days_ann.tsv flight_app/final_csv/Q1_precip_days_ann.tsv
mv weather_investigation/Q2_likelihood_month.tsv flight_app/final_csv/Q2_likelihood_month.tsv
mv weather_investigation/Q3_likelihood_based_on_depth.tsv flight_app/final_csv/Q3_likelihood_based_on_depth.tsv
