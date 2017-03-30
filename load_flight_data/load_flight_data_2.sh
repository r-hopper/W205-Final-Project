#!/bin/bash

# Save current directory
MY_CWD=$(pwd)

# Create staging directories
mkdir ~/staging
mkdir ~/staging/final_project

# Change to staging directory
cd ~/staging/final_project

# Get prezipped files from transtats.bts.gov
URL1="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2016_1.zip"
URL2="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2016_2.zip"
URL3="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2016_3.zip"
URL4="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2016_4.zip"
URL5="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2016_5.zip"
URL6="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2016_6.zip"
URL7="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2016_7.zip"
URL8="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2016_8.zip"
URL9="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2016_9.zip"
URL10="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2016_10.zip"
URL11="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2016_11.zip"
URL12="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2016_12.zip"

wget --no-check-certificate "$URL1" -O On_Time_On_Time_Performance_2016_1.zip

# Unzip data
unzip On_Time_On_Time_Performance_2016_1.zip

# Remove the first line of files and rename
OLD_FILE1="On_Time_On_Time_Performance_2016_1.csv"
NEW_FILE1="on_time_2016_1.csv"
tail -n +2 "$OLD_FILE1" > "$NEW_FILE1"

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project
hdfs dfs -mkdir /user/w205/final_project/flight_data
hdfs dfs -mkdir /user/w205/final_project/flight_data/2016_1

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE1 /user/w205/final_project/flight_data/2016_1

# Remove from staging directory to free up memory
rm /home/w205/staging/on_time_2016_1.csv
rm /home/w205/staging/On_Time_On_Time_Performance_2016_1.csv
rm /home/w205/staging/On_Time_On_Time_Performance_2016_1.zip
rm /hom/w205/staging/readme.html

# Change to staging directory
cd ~/staging/final_project

# Unzip data
unzip On_Time_On_Time_Performance_2016_2.zip

# Remove the first line of files and rename
OLD_FILE1="On_Time_On_Time_Performance_2016_2.csv"
NEW_FILE1="on_time_2016_2.csv"
tail -n +2 "$OLD_FILE2" > "$NEW_FILE2"

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project
hdfs dfs -mkdir /user/w205/final_project/flight_data
hdfs dfs -mkdir /user/w205/final_project/flight_data/2016_2

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE2 /user/w205/final_project/flight_data/2016_2

# Remove from staging directory to free up memory
rm /home/w205/staging/on_time_2016_2.csv
rm /home/w205/staging/On_Time_On_Time_Performance_2016_2.csv
rm /home/w205/staging/On_Time_On_Time_Performance_2016_2.zip
rm /hom/w205/staging/readme.html

# Change to staging directory
cd ~/staging/final_project

# Unzip data
unzip On_Time_On_Time_Performance_2016_3.zip

# Remove the first line of files and rename
OLD_FILE1="On_Time_On_Time_Performance_2016_3.csv"
NEW_FILE1="on_time_2016_3.csv"
tail -n +2 "$OLD_FILE3" > "$NEW_FILE3"

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project
hdfs dfs -mkdir /user/w205/final_project/flight_data
hdfs dfs -mkdir /user/w205/final_project/flight_data/2016_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE3 /user/w205/final_project/flight_data/2016_3

# Remove from staging directory to free up memory
rm /home/w205/staging/on_time_2016_3.csv

# Unzip data
unzip On_Time_On_Time_Performance_2016_3.zip

# Remove the first line of files and rename
OLD_FILE1="On_Time_On_Time_Performance_2016_3.csv"
NEW_FILE1="on_time_2016_3.csv"
tail -n +2 "$OLD_FILE3" > "$NEW_FILE3"

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project
hdfs dfs -mkdir /user/w205/final_project/flight_data
hdfs dfs -mkdir /user/w205/final_project/flight_data/2016_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE3 /user/w205/final_project/flight_data/2016_3

# Remove from staging directory to free up memory
rm /home/w205/staging/on_time_2016_3.csv
rm /home/w205/staging/On_Time_On_Time_Performance_2016_3.csv
rm /home/w205/staging/On_Time_On_Time_Performance_2016_3.zip
rm /hom/w205/staging/readme.html

# Change directory back to original
cd $MY_PWD

# Exit
exit
