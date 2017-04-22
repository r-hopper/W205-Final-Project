#!/bin/bash

# Load Flight Data
# Save current directory
MY_CWD=$(pwd)

# Step 1: Download Flight Data and Load to HDFS
cd load_flight_data

chmod u+x,g+x load_flight_data.sh
./load_flight_data.sh

cd $MY_CWD

# Step Two: Transform flight data in Hive
cd transform_flight_data

# Load flight data into Hive
hive -f load_2007_2016.sql

# Remove flight data from HDFS to free up space
chmod u+x,g+x flight_data_HDFS_cleanup.sh
./flight_data_HDFS_cleanup.sh

echo "Flight Data Loaded"

# Combine monthly data to annual
hive -f months_to_years.sql

# Create five year blocks of data
hive -f one_to_five_years.sql

# Merge yearly data
hive -f all_years.sql

# Remove monthly files to leave just yearly and 5 year blocks
hive -f cleanup_months.sql

echo "Flight Data Transformed"

cd $MY_CWD

#Step 3: Run Air travel queries
cd airline_eda

# Run all SQL files
hive -f busiest_departing_airports.sql
hive -f delay_by_routes.sql
hive -f delay_cause_frequency.sql
hive -f delay_dayofweek.sql
hive -f more_than_2_per_day.sql
hive -f queries_for_csv_export.sql
hive -f queries_for_csv_export_2.sql
hive -f tables_for_csv_export.sql
hive -f tables_for_csv_export_2.sql
hive -f weather_cancellation_by_route_day.sql
hive -f weather_delay_by_route_day.sql

hive -f eda_queries.sql

#Step 4: Load Weather Data
cd weather_data

#Load to HDFS
chmod u+x,g+x load_weather_data.sh
./load_weather_data.sh

echo "Weather Data Loaded"

#Load to Hive and transform
hive -f hive_weather_data_import.sql
hive -f hive_weather_merge.sql

echo "Weather Data Transformed"

cd $MY_CWD

#Step 5: Run Weather Investigation Queries
cd weather_investigation
chmod u+x,g+x weather_investigations.sh
./weather_investigations.sh

echo "Weather Data Queried and Exported"

cd $MY_CWD

#Step 6: Export Airline Queries to CSV
cd airline_eda
chmod u+x,g+x final_csv_export.sh
./final_csv_export.sh
cd $MY_CWD

cd exporting_query_results
chmod u+x,g+x exporting_query_results.sh
./exporting_query_results.sh

echo "Flight Metrics Exported"

cd $MY_CWD
