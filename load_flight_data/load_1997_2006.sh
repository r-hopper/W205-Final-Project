#!/bin/bash

# Change to staging directory
cd ~/staging/final_project

# Load flight data from 1997
##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1997_1.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1997_1.zip

# Unzip data
unzip On_Time_On_Time_Performance_1997_1.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1997_1.csv"
NEW_FILE="on_time_1997_1.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1997_1

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1997_1

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1997_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1997_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1997_1.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1997_2.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1997_2.zip

# Unzip data
unzip On_Time_On_Time_Performance_1997_2.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1997_2.csv"
NEW_FILE="on_time_1997_2.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1997_2

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1997_2

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1997_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1997_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1997_2.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1997_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1997_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_1997_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1997_3.csv"
NEW_FILE="on_time_1997_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1997_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1997_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1997_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1997_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1997_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1997_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1997_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_1997_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1997_3.csv"
NEW_FILE="on_time_1997_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1997_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1997_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1997_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1997_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1997_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1997_4.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1997_4.zip

# Unzip data
unzip On_Time_On_Time_Performance_1997_4.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1997_4.csv"
NEW_FILE="on_time_1997_4.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1997_4

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1997_4

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1997_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1997_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1997_4.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1997_5.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1997_5.zip

# Unzip data
unzip On_Time_On_Time_Performance_1997_5.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1997_5.csv"
NEW_FILE="on_time_1997_5.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1997_5

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1997_5

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1997_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1997_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1997_5.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1997_6.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1997_6.zip

# Unzip data
unzip On_Time_On_Time_Performance_1997_6.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1997_6.csv"
NEW_FILE="on_time_1997_6.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1997_6

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1997_6

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1997_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1997_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1997_6.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1997_7.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1997_7.zip

# Unzip data
unzip On_Time_On_Time_Performance_1997_7.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1997_7.csv"
NEW_FILE="on_time_1997_7.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1997_7

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1997_7

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1997_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1997_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1997_7.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1997_8.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1997_8.zip

# Unzip data
unzip On_Time_On_Time_Performance_1997_8.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1997_8.csv"
NEW_FILE="on_time_1997_8.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1997_8

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1997_8

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1997_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1997_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1997_8.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1997_9.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1997_9.zip

# Unzip data
unzip On_Time_On_Time_Performance_1997_9.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1997_9.csv"
NEW_FILE="on_time_1997_9.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1997_9

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1997_9

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1997_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1997_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1997_9.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1997_10.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1997_10.zip

# Unzip data
unzip On_Time_On_Time_Performance_1997_10.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1997_10.csv"
NEW_FILE="on_time_1997_10.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1997_10

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1997_10

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1997_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1997_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1997_10.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1997_11.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1997_11.zip

# Unzip data
unzip On_Time_On_Time_Performance_1997_11.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1997_11.csv"
NEW_FILE="on_time_1997_11.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1997_11

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1997_11

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1997_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1997_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1997_11.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1997_12.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1997_12.zip

# Unzip data
unzip On_Time_On_Time_Performance_1997_12.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1997_12.csv"
NEW_FILE="on_time_1997_12.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1997_12

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1997_12

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1997_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1997_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1997_12.zip
rm /home/w205/staging/final_project/readme.html

# Load flight data from 1998
##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1998_1.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1998_1.zip

# Unzip data
unzip On_Time_On_Time_Performance_1998_1.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1998_1.csv"
NEW_FILE="on_time_1998_1.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1998_1

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1998_1

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1998_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1998_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1998_1.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1998_2.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1998_2.zip

# Unzip data
unzip On_Time_On_Time_Performance_1998_2.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1998_2.csv"
NEW_FILE="on_time_1998_2.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1998_2

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1998_2

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1998_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1998_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1998_2.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1998_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1998_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_1998_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1998_3.csv"
NEW_FILE="on_time_1998_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1998_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1998_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1998_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1998_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1998_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1998_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1998_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_1998_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1998_3.csv"
NEW_FILE="on_time_1998_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1998_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1998_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1998_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1998_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1998_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1998_4.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1998_4.zip

# Unzip data
unzip On_Time_On_Time_Performance_1998_4.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1998_4.csv"
NEW_FILE="on_time_1998_4.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1998_4

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1998_4

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1998_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1998_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1998_4.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1998_5.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1998_5.zip

# Unzip data
unzip On_Time_On_Time_Performance_1998_5.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1998_5.csv"
NEW_FILE="on_time_1998_5.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1998_5

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1998_5

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1998_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1998_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1998_5.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1998_6.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1998_6.zip

# Unzip data
unzip On_Time_On_Time_Performance_1998_6.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1998_6.csv"
NEW_FILE="on_time_1998_6.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1998_6

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1998_6

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1998_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1998_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1998_6.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1998_7.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1998_7.zip

# Unzip data
unzip On_Time_On_Time_Performance_1998_7.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1998_7.csv"
NEW_FILE="on_time_1998_7.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1998_7

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1998_7

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1998_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1998_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1998_7.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1998_8.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1998_8.zip

# Unzip data
unzip On_Time_On_Time_Performance_1998_8.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1998_8.csv"
NEW_FILE="on_time_1998_8.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1998_8

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1998_8

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1998_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1998_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1998_8.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1998_9.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1998_9.zip

# Unzip data
unzip On_Time_On_Time_Performance_1998_9.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1998_9.csv"
NEW_FILE="on_time_1998_9.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1998_9

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1998_9

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1998_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1998_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1998_9.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1998_10.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1998_10.zip

# Unzip data
unzip On_Time_On_Time_Performance_1998_10.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1998_10.csv"
NEW_FILE="on_time_1998_10.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1998_10

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1998_10

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1998_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1998_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1998_10.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1998_11.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1998_11.zip

# Unzip data
unzip On_Time_On_Time_Performance_1998_11.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1998_11.csv"
NEW_FILE="on_time_1998_11.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1998_11

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1998_11

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1998_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1998_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1998_11.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1998_12.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1998_12.zip

# Unzip data
unzip On_Time_On_Time_Performance_1998_12.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1998_12.csv"
NEW_FILE="on_time_1998_12.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1998_12

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1998_12

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1998_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1998_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1998_12.zip
rm /home/w205/staging/final_project/readme.html

# Load flight data from 1999
##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1999_1.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1999_1.zip

# Unzip data
unzip On_Time_On_Time_Performance_1999_1.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1999_1.csv"
NEW_FILE="on_time_1999_1.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1999_1

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1999_1

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1999_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1999_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1999_1.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1999_2.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1999_2.zip

# Unzip data
unzip On_Time_On_Time_Performance_1999_2.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1999_2.csv"
NEW_FILE="on_time_1999_2.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1999_2

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1999_2

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1999_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1999_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1999_2.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1999_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1999_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_1999_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1999_3.csv"
NEW_FILE="on_time_1999_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1999_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1999_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1999_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1999_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1999_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1999_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1999_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_1999_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1999_3.csv"
NEW_FILE="on_time_1999_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1999_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1999_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1999_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1999_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1999_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1999_4.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1999_4.zip

# Unzip data
unzip On_Time_On_Time_Performance_1999_4.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1999_4.csv"
NEW_FILE="on_time_1999_4.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1999_4

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1999_4

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1999_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1999_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1999_4.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1999_5.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1999_5.zip

# Unzip data
unzip On_Time_On_Time_Performance_1999_5.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1999_5.csv"
NEW_FILE="on_time_1999_5.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1999_5

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1999_5

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1999_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1999_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1999_5.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1999_6.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1999_6.zip

# Unzip data
unzip On_Time_On_Time_Performance_1999_6.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1999_6.csv"
NEW_FILE="on_time_1999_6.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1999_6

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1999_6

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1999_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1999_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1999_6.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1999_7.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1999_7.zip

# Unzip data
unzip On_Time_On_Time_Performance_1999_7.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1999_7.csv"
NEW_FILE="on_time_1999_7.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1999_7

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1999_7

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1999_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1999_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1999_7.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1999_8.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1999_8.zip

# Unzip data
unzip On_Time_On_Time_Performance_1999_8.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1999_8.csv"
NEW_FILE="on_time_1999_8.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1999_8

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1999_8

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1999_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1999_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1999_8.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1999_9.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1999_9.zip

# Unzip data
unzip On_Time_On_Time_Performance_1999_9.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1999_9.csv"
NEW_FILE="on_time_1999_9.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1999_9

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1999_9

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1999_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1999_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1999_9.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1999_10.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1999_10.zip

# Unzip data
unzip On_Time_On_Time_Performance_1999_10.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1999_10.csv"
NEW_FILE="on_time_1999_10.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1999_10

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1999_10

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1999_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1999_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1999_10.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1999_11.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1999_11.zip

# Unzip data
unzip On_Time_On_Time_Performance_1999_11.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1999_11.csv"
NEW_FILE="on_time_1999_11.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1999_11

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1999_11

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1999_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1999_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1999_11.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_1999_12.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_1999_12.zip

# Unzip data
unzip On_Time_On_Time_Performance_1999_12.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_1999_12.csv"
NEW_FILE="on_time_1999_12.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/1999_12

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/1999_12

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_1999_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1999_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_1999_12.zip
rm /home/w205/staging/final_project/readme.html

# Load flight data from 2000
##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2000_1.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2000_1.zip

# Unzip data
unzip On_Time_On_Time_Performance_2000_1.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2000_1.csv"
NEW_FILE="on_time_2000_1.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2000_1

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2000_1

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2000_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_1.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2000_2.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2000_2.zip

# Unzip data
unzip On_Time_On_Time_Performance_2000_2.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2000_2.csv"
NEW_FILE="on_time_2000_2.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2000_2

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2000_2

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2000_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_2.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2000_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2000_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_2000_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2000_3.csv"
NEW_FILE="on_time_2000_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2000_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2000_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2000_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2000_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2000_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_2000_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2000_3.csv"
NEW_FILE="on_time_2000_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2000_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2000_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2000_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2000_4.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2000_4.zip

# Unzip data
unzip On_Time_On_Time_Performance_2000_4.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2000_4.csv"
NEW_FILE="on_time_2000_4.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2000_4

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2000_4

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2000_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_4.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2000_5.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2000_5.zip

# Unzip data
unzip On_Time_On_Time_Performance_2000_5.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2000_5.csv"
NEW_FILE="on_time_2000_5.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2000_5

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2000_5

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2000_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_5.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2000_6.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2000_6.zip

# Unzip data
unzip On_Time_On_Time_Performance_2000_6.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2000_6.csv"
NEW_FILE="on_time_2000_6.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2000_6

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2000_6

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2000_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_6.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2000_7.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2000_7.zip

# Unzip data
unzip On_Time_On_Time_Performance_2000_7.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2000_7.csv"
NEW_FILE="on_time_2000_7.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2000_7

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2000_7

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2000_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_7.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2000_8.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2000_8.zip

# Unzip data
unzip On_Time_On_Time_Performance_2000_8.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2000_8.csv"
NEW_FILE="on_time_2000_8.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2000_8

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2000_8

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2000_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_8.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2000_9.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2000_9.zip

# Unzip data
unzip On_Time_On_Time_Performance_2000_9.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2000_9.csv"
NEW_FILE="on_time_2000_9.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2000_9

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2000_9

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2000_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_9.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2000_10.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2000_10.zip

# Unzip data
unzip On_Time_On_Time_Performance_2000_10.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2000_10.csv"
NEW_FILE="on_time_2000_10.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2000_10

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2000_10

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2000_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_10.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2000_11.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2000_11.zip

# Unzip data
unzip On_Time_On_Time_Performance_2000_11.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2000_11.csv"
NEW_FILE="on_time_2000_11.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2000_11

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2000_11

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2000_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_11.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2000_12.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2000_12.zip

# Unzip data
unzip On_Time_On_Time_Performance_2000_12.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2000_12.csv"
NEW_FILE="on_time_2000_12.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2000_12

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2000_12

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2000_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2000_12.zip
rm /home/w205/staging/final_project/readme.html

# Load flight data from 2001
##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2001_1.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2001_1.zip

# Unzip data
unzip On_Time_On_Time_Performance_2001_1.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2001_1.csv"
NEW_FILE="on_time_2001_1.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2001_1

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2001_1

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2001_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2001_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2001_1.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2001_2.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2001_2.zip

# Unzip data
unzip On_Time_On_Time_Performance_2001_2.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2001_2.csv"
NEW_FILE="on_time_2001_2.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2001_2

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2001_2

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2001_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2001_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2001_2.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2001_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2001_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_2001_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2001_3.csv"
NEW_FILE="on_time_2001_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2001_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2001_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2001_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2001_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2001_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2001_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2001_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_2001_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2001_3.csv"
NEW_FILE="on_time_2001_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2001_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2001_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2001_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2001_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2001_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2001_4.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2001_4.zip

# Unzip data
unzip On_Time_On_Time_Performance_2001_4.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2001_4.csv"
NEW_FILE="on_time_2001_4.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2001_4

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2001_4

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2001_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2001_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2001_4.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2001_5.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2001_5.zip

# Unzip data
unzip On_Time_On_Time_Performance_2001_5.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2001_5.csv"
NEW_FILE="on_time_2001_5.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2001_5

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2001_5

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2001_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2001_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2001_5.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2001_6.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2001_6.zip

# Unzip data
unzip On_Time_On_Time_Performance_2001_6.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2001_6.csv"
NEW_FILE="on_time_2001_6.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2001_6

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2001_6

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2001_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2001_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2001_6.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2001_7.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2001_7.zip

# Unzip data
unzip On_Time_On_Time_Performance_2001_7.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2001_7.csv"
NEW_FILE="on_time_2001_7.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2001_7

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2001_7

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2001_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2001_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2001_7.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2001_8.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2001_8.zip

# Unzip data
unzip On_Time_On_Time_Performance_2001_8.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2001_8.csv"
NEW_FILE="on_time_2001_8.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2001_8

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2001_8

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2001_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2001_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2001_8.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2001_9.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2001_9.zip

# Unzip data
unzip On_Time_On_Time_Performance_2001_9.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2001_9.csv"
NEW_FILE="on_time_2001_9.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2001_9

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2001_9

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2001_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2001_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2001_9.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2001_10.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2001_10.zip

# Unzip data
unzip On_Time_On_Time_Performance_2001_10.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2001_10.csv"
NEW_FILE="on_time_2001_10.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2001_10

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2001_10

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2001_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2001_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2001_10.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2001_11.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2001_11.zip

# Unzip data
unzip On_Time_On_Time_Performance_2001_11.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2001_11.csv"
NEW_FILE="on_time_2001_11.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2001_11

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2001_11

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2001_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2001_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2001_11.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2001_12.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2001_12.zip

# Unzip data
unzip On_Time_On_Time_Performance_2001_12.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2001_12.csv"
NEW_FILE="on_time_2001_12.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2001_12

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2001_12

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2001_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2001_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2001_12.zip
rm /home/w205/staging/final_project/readme.html

# Load flight data from 2002
##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2002_1.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2002_1.zip

# Unzip data
unzip On_Time_On_Time_Performance_2002_1.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2002_1.csv"
NEW_FILE="on_time_2002_1.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2002_1

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2002_1

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2002_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2002_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2002_1.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2002_2.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2002_2.zip

# Unzip data
unzip On_Time_On_Time_Performance_2002_2.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2002_2.csv"
NEW_FILE="on_time_2002_2.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2002_2

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2002_2

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2002_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2002_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2002_2.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2002_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2002_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_2002_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2002_3.csv"
NEW_FILE="on_time_2002_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2002_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2002_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2002_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2002_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2002_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2002_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2002_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_2002_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2002_3.csv"
NEW_FILE="on_time_2002_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2002_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2002_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2002_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2002_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2002_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2002_4.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2002_4.zip

# Unzip data
unzip On_Time_On_Time_Performance_2002_4.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2002_4.csv"
NEW_FILE="on_time_2002_4.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2002_4

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2002_4

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2002_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2002_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2002_4.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2002_5.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2002_5.zip

# Unzip data
unzip On_Time_On_Time_Performance_2002_5.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2002_5.csv"
NEW_FILE="on_time_2002_5.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2002_5

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2002_5

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2002_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2002_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2002_5.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2002_6.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2002_6.zip

# Unzip data
unzip On_Time_On_Time_Performance_2002_6.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2002_6.csv"
NEW_FILE="on_time_2002_6.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2002_6

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2002_6

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2002_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2002_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2002_6.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2002_7.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2002_7.zip

# Unzip data
unzip On_Time_On_Time_Performance_2002_7.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2002_7.csv"
NEW_FILE="on_time_2002_7.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2002_7

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2002_7

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2002_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2002_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2002_7.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2002_8.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2002_8.zip

# Unzip data
unzip On_Time_On_Time_Performance_2002_8.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2002_8.csv"
NEW_FILE="on_time_2002_8.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2002_8

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2002_8

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2002_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2002_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2002_8.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2002_9.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2002_9.zip

# Unzip data
unzip On_Time_On_Time_Performance_2002_9.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2002_9.csv"
NEW_FILE="on_time_2002_9.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2002_9

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2002_9

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2002_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2002_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2002_9.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2002_10.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2002_10.zip

# Unzip data
unzip On_Time_On_Time_Performance_2002_10.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2002_10.csv"
NEW_FILE="on_time_2002_10.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2002_10

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2002_10

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2002_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2002_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2002_10.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2002_11.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2002_11.zip

# Unzip data
unzip On_Time_On_Time_Performance_2002_11.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2002_11.csv"
NEW_FILE="on_time_2002_11.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2002_11

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2002_11

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2002_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2002_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2002_11.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2002_12.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2002_12.zip

# Unzip data
unzip On_Time_On_Time_Performance_2002_12.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2002_12.csv"
NEW_FILE="on_time_2002_12.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2002_12

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2002_12

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2002_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2002_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2002_12.zip
rm /home/w205/staging/final_project/readme.html

# Load flight data from 2003
##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2003_1.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2003_1.zip

# Unzip data
unzip On_Time_On_Time_Performance_2003_1.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2003_1.csv"
NEW_FILE="on_time_2003_1.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2003_1

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2003_1

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2003_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2003_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2003_1.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2003_2.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2003_2.zip

# Unzip data
unzip On_Time_On_Time_Performance_2003_2.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2003_2.csv"
NEW_FILE="on_time_2003_2.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2003_2

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2003_2

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2003_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2003_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2003_2.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2003_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2003_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_2003_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2003_3.csv"
NEW_FILE="on_time_2003_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2003_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2003_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2003_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2003_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2003_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2003_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2003_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_2003_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2003_3.csv"
NEW_FILE="on_time_2003_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2003_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2003_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2003_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2003_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2003_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2003_4.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2003_4.zip

# Unzip data
unzip On_Time_On_Time_Performance_2003_4.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2003_4.csv"
NEW_FILE="on_time_2003_4.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2003_4

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2003_4

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2003_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2003_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2003_4.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2003_5.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2003_5.zip

# Unzip data
unzip On_Time_On_Time_Performance_2003_5.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2003_5.csv"
NEW_FILE="on_time_2003_5.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2003_5

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2003_5

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2003_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2003_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2003_5.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2003_6.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2003_6.zip

# Unzip data
unzip On_Time_On_Time_Performance_2003_6.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2003_6.csv"
NEW_FILE="on_time_2003_6.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2003_6

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2003_6

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2003_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2003_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2003_6.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2003_7.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2003_7.zip

# Unzip data
unzip On_Time_On_Time_Performance_2003_7.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2003_7.csv"
NEW_FILE="on_time_2003_7.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2003_7

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2003_7

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2003_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2003_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2003_7.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2003_8.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2003_8.zip

# Unzip data
unzip On_Time_On_Time_Performance_2003_8.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2003_8.csv"
NEW_FILE="on_time_2003_8.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2003_8

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2003_8

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2003_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2003_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2003_8.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2003_9.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2003_9.zip

# Unzip data
unzip On_Time_On_Time_Performance_2003_9.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2003_9.csv"
NEW_FILE="on_time_2003_9.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2003_9

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2003_9

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2003_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2003_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2003_9.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2003_10.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2003_10.zip

# Unzip data
unzip On_Time_On_Time_Performance_2003_10.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2003_10.csv"
NEW_FILE="on_time_2003_10.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2003_10

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2003_10

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2003_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2003_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2003_10.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2003_11.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2003_11.zip

# Unzip data
unzip On_Time_On_Time_Performance_2003_11.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2003_11.csv"
NEW_FILE="on_time_2003_11.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2003_11

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2003_11

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2003_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2003_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2003_11.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2003_12.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2003_12.zip

# Unzip data
unzip On_Time_On_Time_Performance_2003_12.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2003_12.csv"
NEW_FILE="on_time_2003_12.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2003_12

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2003_12

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2003_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2003_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2003_12.zip
rm /home/w205/staging/final_project/readme.html

# Load flight data from 2004
##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2004_1.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2004_1.zip

# Unzip data
unzip On_Time_On_Time_Performance_2004_1.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2004_1.csv"
NEW_FILE="on_time_2004_1.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2004_1

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2004_1

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2004_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2004_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2004_1.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2004_2.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2004_2.zip

# Unzip data
unzip On_Time_On_Time_Performance_2004_2.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2004_2.csv"
NEW_FILE="on_time_2004_2.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2004_2

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2004_2

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2004_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2004_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2004_2.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2004_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2004_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_2004_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2004_3.csv"
NEW_FILE="on_time_2004_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2004_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2004_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2004_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2004_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2004_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2004_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2004_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_2004_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2004_3.csv"
NEW_FILE="on_time_2004_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2004_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2004_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2004_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2004_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2004_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2004_4.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2004_4.zip

# Unzip data
unzip On_Time_On_Time_Performance_2004_4.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2004_4.csv"
NEW_FILE="on_time_2004_4.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2004_4

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2004_4

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2004_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2004_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2004_4.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2004_5.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2004_5.zip

# Unzip data
unzip On_Time_On_Time_Performance_2004_5.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2004_5.csv"
NEW_FILE="on_time_2004_5.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2004_5

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2004_5

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2004_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2004_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2004_5.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2004_6.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2004_6.zip

# Unzip data
unzip On_Time_On_Time_Performance_2004_6.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2004_6.csv"
NEW_FILE="on_time_2004_6.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2004_6

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2004_6

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2004_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2004_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2004_6.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2004_7.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2004_7.zip

# Unzip data
unzip On_Time_On_Time_Performance_2004_7.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2004_7.csv"
NEW_FILE="on_time_2004_7.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2004_7

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2004_7

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2004_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2004_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2004_7.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2004_8.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2004_8.zip

# Unzip data
unzip On_Time_On_Time_Performance_2004_8.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2004_8.csv"
NEW_FILE="on_time_2004_8.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2004_8

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2004_8

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2004_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2004_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2004_8.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2004_9.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2004_9.zip

# Unzip data
unzip On_Time_On_Time_Performance_2004_9.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2004_9.csv"
NEW_FILE="on_time_2004_9.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2004_9

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2004_9

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2004_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2004_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2004_9.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2004_10.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2004_10.zip

# Unzip data
unzip On_Time_On_Time_Performance_2004_10.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2004_10.csv"
NEW_FILE="on_time_2004_10.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2004_10

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2004_10

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2004_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2004_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2004_10.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2004_11.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2004_11.zip

# Unzip data
unzip On_Time_On_Time_Performance_2004_11.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2004_11.csv"
NEW_FILE="on_time_2004_11.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2004_11

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2004_11

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2004_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2004_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2004_11.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2004_12.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2004_12.zip

# Unzip data
unzip On_Time_On_Time_Performance_2004_12.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2004_12.csv"
NEW_FILE="on_time_2004_12.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2004_12

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2004_12

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2004_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2004_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2004_12.zip
rm /home/w205/staging/final_project/readme.html

# Load flight data from 2005
##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2005_1.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2005_1.zip

# Unzip data
unzip On_Time_On_Time_Performance_2005_1.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2005_1.csv"
NEW_FILE="on_time_2005_1.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2005_1

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2005_1

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2005_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2005_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2005_1.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2005_2.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2005_2.zip

# Unzip data
unzip On_Time_On_Time_Performance_2005_2.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2005_2.csv"
NEW_FILE="on_time_2005_2.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2005_2

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2005_2

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2005_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2005_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2005_2.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2005_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2005_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_2005_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2005_3.csv"
NEW_FILE="on_time_2005_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2005_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2005_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2005_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2005_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2005_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2005_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2005_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_2005_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2005_3.csv"
NEW_FILE="on_time_2005_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2005_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2005_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2005_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2005_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2005_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2005_4.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2005_4.zip

# Unzip data
unzip On_Time_On_Time_Performance_2005_4.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2005_4.csv"
NEW_FILE="on_time_2005_4.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2005_4

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2005_4

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2005_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2005_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2005_4.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2005_5.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2005_5.zip

# Unzip data
unzip On_Time_On_Time_Performance_2005_5.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2005_5.csv"
NEW_FILE="on_time_2005_5.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2005_5

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2005_5

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2005_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2005_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2005_5.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2005_6.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2005_6.zip

# Unzip data
unzip On_Time_On_Time_Performance_2005_6.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2005_6.csv"
NEW_FILE="on_time_2005_6.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2005_6

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2005_6

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2005_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2005_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2005_6.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2005_7.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2005_7.zip

# Unzip data
unzip On_Time_On_Time_Performance_2005_7.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2005_7.csv"
NEW_FILE="on_time_2005_7.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2005_7

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2005_7

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2005_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2005_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2005_7.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2005_8.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2005_8.zip

# Unzip data
unzip On_Time_On_Time_Performance_2005_8.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2005_8.csv"
NEW_FILE="on_time_2005_8.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2005_8

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2005_8

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2005_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2005_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2005_8.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2005_9.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2005_9.zip

# Unzip data
unzip On_Time_On_Time_Performance_2005_9.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2005_9.csv"
NEW_FILE="on_time_2005_9.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2005_9

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2005_9

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2005_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2005_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2005_9.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2005_10.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2005_10.zip

# Unzip data
unzip On_Time_On_Time_Performance_2005_10.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2005_10.csv"
NEW_FILE="on_time_2005_10.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2005_10

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2005_10

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2005_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2005_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2005_10.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2005_11.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2005_11.zip

# Unzip data
unzip On_Time_On_Time_Performance_2005_11.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2005_11.csv"
NEW_FILE="on_time_2005_11.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2005_11

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2005_11

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2005_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2005_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2005_11.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2005_12.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2005_12.zip

# Unzip data
unzip On_Time_On_Time_Performance_2005_12.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2005_12.csv"
NEW_FILE="on_time_2005_12.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2005_12

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2005_12

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2005_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2005_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2005_12.zip
rm /home/w205/staging/final_project/readme.html

# Load flight data from 2006
##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2006_1.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2006_1.zip

# Unzip data
unzip On_Time_On_Time_Performance_2006_1.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2006_1.csv"
NEW_FILE="on_time_2006_1.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2006_1

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2006_1

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2006_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2006_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2006_1.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2006_2.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2006_2.zip

# Unzip data
unzip On_Time_On_Time_Performance_2006_2.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2006_2.csv"
NEW_FILE="on_time_2006_2.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2006_2

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2006_2

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2006_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2006_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2006_2.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2006_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2006_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_2006_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2006_3.csv"
NEW_FILE="on_time_2006_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2006_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2006_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2006_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2006_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2006_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2006_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2006_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_2006_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2006_3.csv"
NEW_FILE="on_time_2006_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2006_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2006_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2006_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2006_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2006_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2006_4.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2006_4.zip

# Unzip data
unzip On_Time_On_Time_Performance_2006_4.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2006_4.csv"
NEW_FILE="on_time_2006_4.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2006_4

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2006_4

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2006_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2006_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2006_4.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2006_5.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2006_5.zip

# Unzip data
unzip On_Time_On_Time_Performance_2006_5.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2006_5.csv"
NEW_FILE="on_time_2006_5.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2006_5

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2006_5

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2006_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2006_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2006_5.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2006_6.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2006_6.zip

# Unzip data
unzip On_Time_On_Time_Performance_2006_6.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2006_6.csv"
NEW_FILE="on_time_2006_6.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2006_6

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2006_6

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2006_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2006_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2006_6.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2006_7.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2006_7.zip

# Unzip data
unzip On_Time_On_Time_Performance_2006_7.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2006_7.csv"
NEW_FILE="on_time_2006_7.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2006_7

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2006_7

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2006_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2006_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2006_7.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2006_8.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2006_8.zip

# Unzip data
unzip On_Time_On_Time_Performance_2006_8.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2006_8.csv"
NEW_FILE="on_time_2006_8.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2006_8

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2006_8

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2006_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2006_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2006_8.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2006_9.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2006_9.zip

# Unzip data
unzip On_Time_On_Time_Performance_2006_9.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2006_9.csv"
NEW_FILE="on_time_2006_9.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2006_9

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2006_9

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2006_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2006_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2006_9.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2006_10.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2006_10.zip

# Unzip data
unzip On_Time_On_Time_Performance_2006_10.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2006_10.csv"
NEW_FILE="on_time_2006_10.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2006_10

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2006_10

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2006_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2006_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2006_10.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2006_11.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2006_11.zip

# Unzip data
unzip On_Time_On_Time_Performance_2006_11.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2006_11.csv"
NEW_FILE="on_time_2006_11.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2006_11

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2006_11

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2006_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2006_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2006_11.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2006_12.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2006_12.zip

# Unzip data
unzip On_Time_On_Time_Performance_2006_12.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2006_12.csv"
NEW_FILE="on_time_2006_12.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2006_12

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2006_12

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2006_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2006_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2006_12.zip
rm /home/w205/staging/final_project/readme.html

