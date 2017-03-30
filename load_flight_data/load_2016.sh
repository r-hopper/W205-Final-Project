#!/bin/bash

# Load flight data from 2016

# Change to staging directory
cd ~/staging/final_project

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2016_1.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2016_1.zip

# Unzip data
unzip On_Time_On_Time_Performance_2016_1.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2016_1.csv"
NEW_FILE="on_time_2016_1.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2016_1

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2016_1

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2016_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2016_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2016_1.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2016_2.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2016_2.zip

# Unzip data
unzip On_Time_On_Time_Performance_2016_2.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2016_2.csv"
NEW_FILE="on_time_2016_2.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2016_2

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2016_2

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2016_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2016_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2016_2.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2016_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2016_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_2016_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2016_3.csv"
NEW_FILE="on_time_2016_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2016_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2016_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2016_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2016_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2016_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2016_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2016_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_2016_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2016_3.csv"
NEW_FILE="on_time_2016_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2016_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2016_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2016_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2016_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2016_3.zip
rm /home/w205/staging/final_project/readme.html
