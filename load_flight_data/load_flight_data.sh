#!/bin/bash

# Save current directory
MY_CWD=$(pwd)

# Create staging directories
mkdir ~/staging
mkdir ~/staging/final_project

# Create main hdfs directory
hdfs dfs -mkdir /user/w205/final_project
hdfs dfs -mkdir /user/w205/final_project/flight_data

echo "This script is about to run another script."

#!/bin/bash
./load_2007_2016.sh
echo "Data from 2007-2016 loaded."

echo "External script complete."

# Change directory back to original
cd $MY_PWD

# Exit
exit
