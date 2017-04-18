#1/bin/bash

# Load Flight Data
# Save current directory
MY_CWD=$(pwd)

cd load_flight_data

./load_flight_data.sh

cd $MY_CWD

#Transform flight data
cd transform_flight_data

# Load data into Hive
hive -f load_2007_2016.sql

chmod u+x,g+x flight_data_HDFS_cleanup.sh
./flight_data_HDFS_cleanup.sh

echo "Flight Data Loaded"

# Combine monthly data to annual
hive -f months_to_years.sql

# Run all years
hive -f all_years.sql

hive -f one_to_five_years.sql

hive -f cleanup_months.sql

echo "Flight Data Transformed"

cd $MY_CWD

# Load Weather Data

cd weather_data

chmod u+x,g+x load_weather_data.sh
./load_weather_data.sh

echo "Weather Data Loaded"

hive -f hive_weather_data_import.sql

hive -f hive_weather_merge.sql

echo "Weather Data Transformed"

cd $MY_CWD

