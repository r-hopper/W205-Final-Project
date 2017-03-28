#!/bin/bash

# Save current directory
MY_CWD=$(pwd)

# Create staging directories
mkdir ~/staging
mkdir ~/staging/final_project

# Change to staging directory
cd ~/staging/final_project

# Get file from data.medicare.gov
MY_URL="https://data.medicare.gov/views/bg9k-emty/files/6c902f45-e28b-42f5-9f96-ae9d1e583472?content_type=application%2Fzip%3B%20charset%3Dbinary&filename=Hospital_Revised_Flatfiles.zip"
wget "$MY_URL" -O medicare_data.zip

# Unzip data
unzip medicare_data.zip

# Remove the first line of files and rename
OLD_FILE1="Hospital General Information.csv"
NEW_FILE1="hospitals.csv"

tail -n +2 "$OLD_FILE1" > "$NEW_FILE1"


# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project
hdfs dfs -mkdir /user/w205/final_project/flight_data


# Copy the files to hdfs
hdfs dfs -put $NEW_FILE1 /user/w205/final_project/flight_data

# Change directory back to original
cd $MY_PWD

# Exit
exit
