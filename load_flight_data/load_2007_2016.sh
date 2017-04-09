#!/bin/bash

cd ~/staging/final_project

# Load flight data from 2007

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2007_1.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2007_1.zip

# Unzip data
unzip On_Time_On_Time_Performance_2007_1.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2007_1.csv"
NEW_FILE="on_time_2007_1.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2007_1

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2007_1

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2007_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2007_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2007_1.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2007_2.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2007_2.zip

# Unzip data
unzip On_Time_On_Time_Performance_2007_2.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2007_2.csv"
NEW_FILE="on_time_2007_2.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2007_2

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2007_2

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2007_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2007_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2007_2.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2007_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2007_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_2007_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2007_3.csv"
NEW_FILE="on_time_2007_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2007_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2007_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2007_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2007_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2007_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2007_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2007_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_2007_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2007_3.csv"
NEW_FILE="on_time_2007_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2007_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2007_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2007_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2007_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2007_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2007_4.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2007_4.zip

# Unzip data
unzip On_Time_On_Time_Performance_2007_4.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2007_4.csv"
NEW_FILE="on_time_2007_4.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2007_4

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2007_4

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2007_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2007_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2007_4.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2007_5.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2007_5.zip

# Unzip data
unzip On_Time_On_Time_Performance_2007_5.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2007_5.csv"
NEW_FILE="on_time_2007_5.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2007_5

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2007_5

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2007_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2007_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2007_5.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2007_6.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2007_6.zip

# Unzip data
unzip On_Time_On_Time_Performance_2007_6.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2007_6.csv"
NEW_FILE="on_time_2007_6.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2007_6

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2007_6

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2007_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2007_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2007_6.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2007_7.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2007_7.zip

# Unzip data
unzip On_Time_On_Time_Performance_2007_7.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2007_7.csv"
NEW_FILE="on_time_2007_7.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2007_7

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2007_7

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2007_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2007_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2007_7.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2007_8.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2007_8.zip

# Unzip data
unzip On_Time_On_Time_Performance_2007_8.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2007_8.csv"
NEW_FILE="on_time_2007_8.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2007_8

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2007_8

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2007_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2007_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2007_8.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2007_9.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2007_9.zip

# Unzip data
unzip On_Time_On_Time_Performance_2007_9.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2007_9.csv"
NEW_FILE="on_time_2007_9.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2007_9

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2007_9

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2007_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2007_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2007_9.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2007_10.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2007_10.zip

# Unzip data
unzip On_Time_On_Time_Performance_2007_10.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2007_10.csv"
NEW_FILE="on_time_2007_10.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2007_10

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2007_10

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2007_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2007_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2007_10.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2007_11.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2007_11.zip

# Unzip data
unzip On_Time_On_Time_Performance_2007_11.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2007_11.csv"
NEW_FILE="on_time_2007_11.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2007_11

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2007_11

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2007_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2007_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2007_11.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2007_12.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2007_12.zip

# Unzip data
unzip On_Time_On_Time_Performance_2007_12.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2007_12.csv"
NEW_FILE="on_time_2007_12.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2007_12

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2007_12

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2007_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2007_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2007_12.zip
rm /home/w205/staging/final_project/readme.html

# Load flight data from 2008
##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2008_1.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2008_1.zip

# Unzip data
unzip On_Time_On_Time_Performance_2008_1.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2008_1.csv"
NEW_FILE="on_time_2008_1.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2008_1

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2008_1

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2008_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2008_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2008_1.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2008_2.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2008_2.zip

# Unzip data
unzip On_Time_On_Time_Performance_2008_2.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2008_2.csv"
NEW_FILE="on_time_2008_2.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2008_2

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2008_2

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2008_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2008_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2008_2.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2008_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2008_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_2008_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2008_3.csv"
NEW_FILE="on_time_2008_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2008_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2008_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2008_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2008_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2008_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2008_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2008_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_2008_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2008_3.csv"
NEW_FILE="on_time_2008_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2008_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2008_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2008_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2008_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2008_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2008_4.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2008_4.zip

# Unzip data
unzip On_Time_On_Time_Performance_2008_4.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2008_4.csv"
NEW_FILE="on_time_2008_4.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2008_4

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2008_4

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2008_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2008_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2008_4.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2008_5.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2008_5.zip

# Unzip data
unzip On_Time_On_Time_Performance_2008_5.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2008_5.csv"
NEW_FILE="on_time_2008_5.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2008_5

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2008_5

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2008_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2008_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2008_5.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2008_6.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2008_6.zip

# Unzip data
unzip On_Time_On_Time_Performance_2008_6.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2008_6.csv"
NEW_FILE="on_time_2008_6.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2008_6

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2008_6

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2008_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2008_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2008_6.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2008_7.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2008_7.zip

# Unzip data
unzip On_Time_On_Time_Performance_2008_7.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2008_7.csv"
NEW_FILE="on_time_2008_7.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2008_7

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2008_7

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2008_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2008_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2008_7.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2008_8.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2008_8.zip

# Unzip data
unzip On_Time_On_Time_Performance_2008_8.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2008_8.csv"
NEW_FILE="on_time_2008_8.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2008_8

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2008_8

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2008_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2008_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2008_8.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2008_9.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2008_9.zip

# Unzip data
unzip On_Time_On_Time_Performance_2008_9.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2008_9.csv"
NEW_FILE="on_time_2008_9.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2008_9

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2008_9

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2008_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2008_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2008_9.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2008_10.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2008_10.zip

# Unzip data
unzip On_Time_On_Time_Performance_2008_10.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2008_10.csv"
NEW_FILE="on_time_2008_10.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2008_10

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2008_10

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2008_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2008_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2008_10.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2008_11.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2008_11.zip

# Unzip data
unzip On_Time_On_Time_Performance_2008_11.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2008_11.csv"
NEW_FILE="on_time_2008_11.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2008_11

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2008_11

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2008_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2008_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2008_11.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2008_12.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2008_12.zip

# Unzip data
unzip On_Time_On_Time_Performance_2008_12.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2008_12.csv"
NEW_FILE="on_time_2008_12.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2008_12

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2008_12

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2008_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2008_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2008_12.zip
rm /home/w205/staging/final_project/readme.html

# Load flight data from 2009
##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2009_1.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2009_1.zip

# Unzip data
unzip On_Time_On_Time_Performance_2009_1.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2009_1.csv"
NEW_FILE="on_time_2009_1.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2009_1

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2009_1

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2009_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2009_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2009_1.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2009_2.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2009_2.zip

# Unzip data
unzip On_Time_On_Time_Performance_2009_2.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2009_2.csv"
NEW_FILE="on_time_2009_2.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2009_2

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2009_2

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2009_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2009_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2009_2.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2009_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2009_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_2009_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2009_3.csv"
NEW_FILE="on_time_2009_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2009_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2009_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2009_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2009_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2009_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2009_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2009_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_2009_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2009_3.csv"
NEW_FILE="on_time_2009_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2009_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2009_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2009_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2009_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2009_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2009_4.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2009_4.zip

# Unzip data
unzip On_Time_On_Time_Performance_2009_4.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2009_4.csv"
NEW_FILE="on_time_2009_4.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2009_4

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2009_4

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2009_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2009_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2009_4.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2009_5.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2009_5.zip

# Unzip data
unzip On_Time_On_Time_Performance_2009_5.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2009_5.csv"
NEW_FILE="on_time_2009_5.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2009_5

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2009_5

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2009_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2009_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2009_5.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2009_6.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2009_6.zip

# Unzip data
unzip On_Time_On_Time_Performance_2009_6.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2009_6.csv"
NEW_FILE="on_time_2009_6.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2009_6

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2009_6

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2009_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2009_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2009_6.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2009_7.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2009_7.zip

# Unzip data
unzip On_Time_On_Time_Performance_2009_7.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2009_7.csv"
NEW_FILE="on_time_2009_7.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2009_7

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2009_7

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2009_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2009_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2009_7.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2009_8.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2009_8.zip

# Unzip data
unzip On_Time_On_Time_Performance_2009_8.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2009_8.csv"
NEW_FILE="on_time_2009_8.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2009_8

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2009_8

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2009_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2009_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2009_8.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2009_9.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2009_9.zip

# Unzip data
unzip On_Time_On_Time_Performance_2009_9.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2009_9.csv"
NEW_FILE="on_time_2009_9.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2009_9

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2009_9

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2009_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2009_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2009_9.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2009_10.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2009_10.zip

# Unzip data
unzip On_Time_On_Time_Performance_2009_10.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2009_10.csv"
NEW_FILE="on_time_2009_10.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2009_10

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2009_10

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2009_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2009_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2009_10.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2009_11.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2009_11.zip

# Unzip data
unzip On_Time_On_Time_Performance_2009_11.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2009_11.csv"
NEW_FILE="on_time_2009_11.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2009_11

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2009_11

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2009_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2009_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2009_11.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2009_12.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2009_12.zip

# Unzip data
unzip On_Time_On_Time_Performance_2009_12.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2009_12.csv"
NEW_FILE="on_time_2009_12.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2009_12

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2009_12

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2009_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2009_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2009_12.zip
rm /home/w205/staging/final_project/readme.html

# Load flight data from 2010
##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2010_1.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2010_1.zip

# Unzip data
unzip On_Time_On_Time_Performance_2010_1.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2010_1.csv"
NEW_FILE="on_time_2010_1.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2010_1

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2010_1

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2010_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2010_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2010_1.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2010_2.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2010_2.zip

# Unzip data
unzip On_Time_On_Time_Performance_2010_2.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2010_2.csv"
NEW_FILE="on_time_2010_2.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2010_2

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2010_2

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2010_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2010_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2010_2.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2010_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2010_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_2010_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2010_3.csv"
NEW_FILE="on_time_2010_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2010_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2010_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2010_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2010_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2010_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2010_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2010_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_2010_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2010_3.csv"
NEW_FILE="on_time_2010_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2010_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2010_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2010_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2010_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2010_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2010_4.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2010_4.zip

# Unzip data
unzip On_Time_On_Time_Performance_2010_4.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2010_4.csv"
NEW_FILE="on_time_2010_4.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2010_4

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2010_4

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2010_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2010_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2010_4.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2010_5.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2010_5.zip

# Unzip data
unzip On_Time_On_Time_Performance_2010_5.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2010_5.csv"
NEW_FILE="on_time_2010_5.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2010_5

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2010_5

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2010_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2010_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2010_5.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2010_6.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2010_6.zip

# Unzip data
unzip On_Time_On_Time_Performance_2010_6.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2010_6.csv"
NEW_FILE="on_time_2010_6.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2010_6

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2010_6

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2010_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2010_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2010_6.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2010_7.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2010_7.zip

# Unzip data
unzip On_Time_On_Time_Performance_2010_7.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2010_7.csv"
NEW_FILE="on_time_2010_7.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2010_7

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2010_7

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2010_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2010_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2010_7.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2010_8.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2010_8.zip

# Unzip data
unzip On_Time_On_Time_Performance_2010_8.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2010_8.csv"
NEW_FILE="on_time_2010_8.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2010_8

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2010_8

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2010_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2010_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2010_8.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2010_9.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2010_9.zip

# Unzip data
unzip On_Time_On_Time_Performance_2010_9.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2010_9.csv"
NEW_FILE="on_time_2010_9.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2010_9

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2010_9

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2010_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2010_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2010_9.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2010_10.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2010_10.zip

# Unzip data
unzip On_Time_On_Time_Performance_2010_10.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2010_10.csv"
NEW_FILE="on_time_2010_10.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2010_10

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2010_10

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2010_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2010_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2010_10.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2010_11.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2010_11.zip

# Unzip data
unzip On_Time_On_Time_Performance_2010_11.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2010_11.csv"
NEW_FILE="on_time_2010_11.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2010_11

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2010_11

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2010_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2010_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2010_11.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2010_12.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2010_12.zip

# Unzip data
unzip On_Time_On_Time_Performance_2010_12.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2010_12.csv"
NEW_FILE="on_time_2010_12.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2010_12

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2010_12

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2010_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2010_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2010_12.zip
rm /home/w205/staging/final_project/readme.html

# Load flight data from 2011
##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2011_1.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2011_1.zip

# Unzip data
unzip On_Time_On_Time_Performance_2011_1.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2011_1.csv"
NEW_FILE="on_time_2011_1.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2011_1

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2011_1

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2011_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2011_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2011_1.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2011_2.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2011_2.zip

# Unzip data
unzip On_Time_On_Time_Performance_2011_2.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2011_2.csv"
NEW_FILE="on_time_2011_2.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2011_2

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2011_2

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2011_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2011_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2011_2.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2011_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2011_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_2011_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2011_3.csv"
NEW_FILE="on_time_2011_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2011_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2011_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2011_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2011_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2011_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2011_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2011_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_2011_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2011_3.csv"
NEW_FILE="on_time_2011_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2011_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2011_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2011_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2011_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2011_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2011_4.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2011_4.zip

# Unzip data
unzip On_Time_On_Time_Performance_2011_4.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2011_4.csv"
NEW_FILE="on_time_2011_4.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2011_4

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2011_4

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2011_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2011_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2011_4.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2011_5.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2011_5.zip

# Unzip data
unzip On_Time_On_Time_Performance_2011_5.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2011_5.csv"
NEW_FILE="on_time_2011_5.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2011_5

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2011_5

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2011_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2011_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2011_5.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2011_6.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2011_6.zip

# Unzip data
unzip On_Time_On_Time_Performance_2011_6.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2011_6.csv"
NEW_FILE="on_time_2011_6.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2011_6

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2011_6

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2011_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2011_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2011_6.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2011_7.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2011_7.zip

# Unzip data
unzip On_Time_On_Time_Performance_2011_7.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2011_7.csv"
NEW_FILE="on_time_2011_7.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2011_7

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2011_7

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2011_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2011_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2011_7.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2011_8.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2011_8.zip

# Unzip data
unzip On_Time_On_Time_Performance_2011_8.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2011_8.csv"
NEW_FILE="on_time_2011_8.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2011_8

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2011_8

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2011_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2011_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2011_8.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2011_9.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2011_9.zip

# Unzip data
unzip On_Time_On_Time_Performance_2011_9.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2011_9.csv"
NEW_FILE="on_time_2011_9.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2011_9

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2011_9

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2011_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2011_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2011_9.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2011_10.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2011_10.zip

# Unzip data
unzip On_Time_On_Time_Performance_2011_10.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2011_10.csv"
NEW_FILE="on_time_2011_10.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2011_10

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2011_10

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2011_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2011_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2011_10.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2011_11.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2011_11.zip

# Unzip data
unzip On_Time_On_Time_Performance_2011_11.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2011_11.csv"
NEW_FILE="on_time_2011_11.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2011_11

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2011_11

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2011_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2011_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2011_11.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2011_12.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2011_12.zip

# Unzip data
unzip On_Time_On_Time_Performance_2011_12.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2011_12.csv"
NEW_FILE="on_time_2011_12.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2011_12

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2011_12

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2011_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2011_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2011_12.zip
rm /home/w205/staging/final_project/readme.html

# Load flight data from 2012
##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2012_1.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2012_1.zip

# Unzip data
unzip On_Time_On_Time_Performance_2012_1.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2012_1.csv"
NEW_FILE="on_time_2012_1.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2012_1

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2012_1

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2012_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2012_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2012_1.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2012_2.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2012_2.zip

# Unzip data
unzip On_Time_On_Time_Performance_2012_2.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2012_2.csv"
NEW_FILE="on_time_2012_2.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2012_2

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2012_2

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2012_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2012_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2012_2.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2012_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2012_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_2012_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2012_3.csv"
NEW_FILE="on_time_2012_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2012_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2012_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2012_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2012_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2012_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2012_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2012_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_2012_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2012_3.csv"
NEW_FILE="on_time_2012_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2012_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2012_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2012_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2012_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2012_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2012_4.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2012_4.zip

# Unzip data
unzip On_Time_On_Time_Performance_2012_4.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2012_4.csv"
NEW_FILE="on_time_2012_4.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2012_4

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2012_4

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2012_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2012_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2012_4.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2012_5.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2012_5.zip

# Unzip data
unzip On_Time_On_Time_Performance_2012_5.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2012_5.csv"
NEW_FILE="on_time_2012_5.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2012_5

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2012_5

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2012_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2012_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2012_5.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2012_6.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2012_6.zip

# Unzip data
unzip On_Time_On_Time_Performance_2012_6.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2012_6.csv"
NEW_FILE="on_time_2012_6.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2012_6

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2012_6

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2012_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2012_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2012_6.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2012_7.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2012_7.zip

# Unzip data
unzip On_Time_On_Time_Performance_2012_7.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2012_7.csv"
NEW_FILE="on_time_2012_7.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2012_7

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2012_7

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2012_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2012_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2012_7.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2012_8.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2012_8.zip

# Unzip data
unzip On_Time_On_Time_Performance_2012_8.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2012_8.csv"
NEW_FILE="on_time_2012_8.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2012_8

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2012_8

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2012_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2012_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2012_8.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2012_9.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2012_9.zip

# Unzip data
unzip On_Time_On_Time_Performance_2012_9.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2012_9.csv"
NEW_FILE="on_time_2012_9.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2012_9

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2012_9

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2012_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2012_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2012_9.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2012_10.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2012_10.zip

# Unzip data
unzip On_Time_On_Time_Performance_2012_10.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2012_10.csv"
NEW_FILE="on_time_2012_10.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2012_10

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2012_10

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2012_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2012_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2012_10.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2012_11.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2012_11.zip

# Unzip data
unzip On_Time_On_Time_Performance_2012_11.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2012_11.csv"
NEW_FILE="on_time_2012_11.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2012_11

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2012_11

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2012_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2012_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2012_11.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2012_12.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2012_12.zip

# Unzip data
unzip On_Time_On_Time_Performance_2012_12.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2012_12.csv"
NEW_FILE="on_time_2012_12.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2012_12

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2012_12

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2012_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2012_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2012_12.zip
rm /home/w205/staging/final_project/readme.html

# Load flight data from 2013
##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2013_1.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2013_1.zip

# Unzip data
unzip On_Time_On_Time_Performance_2013_1.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2013_1.csv"
NEW_FILE="on_time_2013_1.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2013_1

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2013_1

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2013_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2013_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2013_1.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2013_2.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2013_2.zip

# Unzip data
unzip On_Time_On_Time_Performance_2013_2.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2013_2.csv"
NEW_FILE="on_time_2013_2.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2013_2

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2013_2

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2013_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2013_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2013_2.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2013_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2013_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_2013_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2013_3.csv"
NEW_FILE="on_time_2013_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2013_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2013_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2013_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2013_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2013_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2013_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2013_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_2013_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2013_3.csv"
NEW_FILE="on_time_2013_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2013_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2013_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2013_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2013_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2013_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2013_4.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2013_4.zip

# Unzip data
unzip On_Time_On_Time_Performance_2013_4.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2013_4.csv"
NEW_FILE="on_time_2013_4.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2013_4

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2013_4

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2013_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2013_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2013_4.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2013_5.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2013_5.zip

# Unzip data
unzip On_Time_On_Time_Performance_2013_5.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2013_5.csv"
NEW_FILE="on_time_2013_5.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2013_5

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2013_5

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2013_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2013_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2013_5.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2013_6.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2013_6.zip

# Unzip data
unzip On_Time_On_Time_Performance_2013_6.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2013_6.csv"
NEW_FILE="on_time_2013_6.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2013_6

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2013_6

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2013_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2013_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2013_6.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2013_7.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2013_7.zip

# Unzip data
unzip On_Time_On_Time_Performance_2013_7.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2013_7.csv"
NEW_FILE="on_time_2013_7.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2013_7

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2013_7

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2013_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2013_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2013_7.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2013_8.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2013_8.zip

# Unzip data
unzip On_Time_On_Time_Performance_2013_8.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2013_8.csv"
NEW_FILE="on_time_2013_8.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2013_8

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2013_8

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2013_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2013_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2013_8.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2013_9.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2013_9.zip

# Unzip data
unzip On_Time_On_Time_Performance_2013_9.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2013_9.csv"
NEW_FILE="on_time_2013_9.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2013_9

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2013_9

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2013_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2013_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2013_9.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2013_10.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2013_10.zip

# Unzip data
unzip On_Time_On_Time_Performance_2013_10.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2013_10.csv"
NEW_FILE="on_time_2013_10.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2013_10

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2013_10

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2013_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2013_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2013_10.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2013_11.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2013_11.zip

# Unzip data
unzip On_Time_On_Time_Performance_2013_11.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2013_11.csv"
NEW_FILE="on_time_2013_11.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2013_11

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2013_11

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2013_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2013_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2013_11.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2013_12.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2013_12.zip

# Unzip data
unzip On_Time_On_Time_Performance_2013_12.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2013_12.csv"
NEW_FILE="on_time_2013_12.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2013_12

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2013_12

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2013_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2013_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2013_12.zip
rm /home/w205/staging/final_project/readme.html

# Load flight data from 2014
##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2014_1.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2014_1.zip

# Unzip data
unzip On_Time_On_Time_Performance_2014_1.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2014_1.csv"
NEW_FILE="on_time_2014_1.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2014_1

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2014_1

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2014_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2014_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2014_1.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2014_2.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2014_2.zip

# Unzip data
unzip On_Time_On_Time_Performance_2014_2.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2014_2.csv"
NEW_FILE="on_time_2014_2.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2014_2

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2014_2

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2014_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2014_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2014_2.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2014_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2014_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_2014_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2014_3.csv"
NEW_FILE="on_time_2014_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2014_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2014_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2014_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2014_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2014_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2014_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2014_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_2014_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2014_3.csv"
NEW_FILE="on_time_2014_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2014_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2014_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2014_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2014_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2014_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2014_4.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2014_4.zip

# Unzip data
unzip On_Time_On_Time_Performance_2014_4.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2014_4.csv"
NEW_FILE="on_time_2014_4.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2014_4

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2014_4

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2014_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2014_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2014_4.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2014_5.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2014_5.zip

# Unzip data
unzip On_Time_On_Time_Performance_2014_5.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2014_5.csv"
NEW_FILE="on_time_2014_5.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2014_5

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2014_5

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2014_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2014_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2014_5.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2014_6.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2014_6.zip

# Unzip data
unzip On_Time_On_Time_Performance_2014_6.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2014_6.csv"
NEW_FILE="on_time_2014_6.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2014_6

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2014_6

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2014_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2014_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2014_6.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2014_7.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2014_7.zip

# Unzip data
unzip On_Time_On_Time_Performance_2014_7.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2014_7.csv"
NEW_FILE="on_time_2014_7.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2014_7

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2014_7

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2014_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2014_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2014_7.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2014_8.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2014_8.zip

# Unzip data
unzip On_Time_On_Time_Performance_2014_8.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2014_8.csv"
NEW_FILE="on_time_2014_8.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2014_8

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2014_8

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2014_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2014_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2014_8.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2014_9.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2014_9.zip

# Unzip data
unzip On_Time_On_Time_Performance_2014_9.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2014_9.csv"
NEW_FILE="on_time_2014_9.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2014_9

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2014_9

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2014_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2014_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2014_9.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2014_10.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2014_10.zip

# Unzip data
unzip On_Time_On_Time_Performance_2014_10.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2014_10.csv"
NEW_FILE="on_time_2014_10.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2014_10

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2014_10

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2014_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2014_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2014_10.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2014_11.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2014_11.zip

# Unzip data
unzip On_Time_On_Time_Performance_2014_11.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2014_11.csv"
NEW_FILE="on_time_2014_11.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2014_11

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2014_11

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2014_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2014_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2014_11.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2014_12.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2014_12.zip

# Unzip data
unzip On_Time_On_Time_Performance_2014_12.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2014_12.csv"
NEW_FILE="on_time_2014_12.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2014_12

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2014_12

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2014_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2014_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2014_12.zip
rm /home/w205/staging/final_project/readme.html

# Load flight data from 2015
##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2015_1.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2015_1.zip

# Unzip data
unzip On_Time_On_Time_Performance_2015_1.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2015_1.csv"
NEW_FILE="on_time_2015_1.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2015_1

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2015_1

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2015_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2015_1.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2015_1.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2015_2.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2015_2.zip

# Unzip data
unzip On_Time_On_Time_Performance_2015_2.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2015_2.csv"
NEW_FILE="on_time_2015_2.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2015_2

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2015_2

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2015_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2015_2.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2015_2.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2015_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2015_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_2015_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2015_3.csv"
NEW_FILE="on_time_2015_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2015_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2015_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2015_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2015_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2015_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2015_3.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2015_3.zip

# Unzip data
unzip On_Time_On_Time_Performance_2015_3.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2015_3.csv"
NEW_FILE="on_time_2015_3.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2015_3

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2015_3

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2015_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2015_3.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2015_3.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2015_4.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2015_4.zip

# Unzip data
unzip On_Time_On_Time_Performance_2015_4.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2015_4.csv"
NEW_FILE="on_time_2015_4.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2015_4

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2015_4

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2015_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2015_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2015_4.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2015_5.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2015_5.zip

# Unzip data
unzip On_Time_On_Time_Performance_2015_5.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2015_5.csv"
NEW_FILE="on_time_2015_5.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2015_5

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2015_5

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2015_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2015_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2015_5.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2015_6.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2015_6.zip

# Unzip data
unzip On_Time_On_Time_Performance_2015_6.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2015_6.csv"
NEW_FILE="on_time_2015_6.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2015_6

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2015_6

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2015_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2015_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2015_6.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2015_7.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2015_7.zip

# Unzip data
unzip On_Time_On_Time_Performance_2015_7.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2015_7.csv"
NEW_FILE="on_time_2015_7.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2015_7

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2015_7

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2015_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2015_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2015_7.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2015_8.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2015_8.zip

# Unzip data
unzip On_Time_On_Time_Performance_2015_8.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2015_8.csv"
NEW_FILE="on_time_2015_8.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2015_8

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2015_8

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2015_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2015_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2015_8.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2015_9.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2015_9.zip

# Unzip data
unzip On_Time_On_Time_Performance_2015_9.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2015_9.csv"
NEW_FILE="on_time_2015_9.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2015_9

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2015_9

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2015_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2015_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2015_9.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2015_10.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2015_10.zip

# Unzip data
unzip On_Time_On_Time_Performance_2015_10.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2015_10.csv"
NEW_FILE="on_time_2015_10.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2015_10

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2015_10

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2015_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2015_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2015_10.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2015_11.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2015_11.zip

# Unzip data
unzip On_Time_On_Time_Performance_2015_11.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2015_11.csv"
NEW_FILE="on_time_2015_11.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2015_11

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2015_11

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2015_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2015_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2015_11.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2015_12.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2015_12.zip

# Unzip data
unzip On_Time_On_Time_Performance_2015_12.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2015_12.csv"
NEW_FILE="on_time_2015_12.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2015_12

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2015_12

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2015_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2015_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2015_12.zip
rm /home/w205/staging/final_project/readme.html

# Load flight data from 2016
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

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2016_4.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2016_4.zip

# Unzip data
unzip On_Time_On_Time_Performance_2016_4.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2016_4.csv"
NEW_FILE="on_time_2016_4.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2016_4

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2016_4

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2016_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2016_4.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2016_4.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2016_5.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2016_5.zip

# Unzip data
unzip On_Time_On_Time_Performance_2016_5.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2016_5.csv"
NEW_FILE="on_time_2016_5.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2016_5

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2016_5

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2016_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2016_5.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2016_5.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2016_6.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2016_6.zip

# Unzip data
unzip On_Time_On_Time_Performance_2016_6.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2016_6.csv"
NEW_FILE="on_time_2016_6.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2016_6

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2016_6

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2016_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2016_6.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2016_6.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2016_7.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2016_7.zip

# Unzip data
unzip On_Time_On_Time_Performance_2016_7.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2016_7.csv"
NEW_FILE="on_time_2016_7.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2016_7

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2016_7

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2016_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2016_7.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2016_7.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2016_8.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2016_8.zip

# Unzip data
unzip On_Time_On_Time_Performance_2016_8.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2016_8.csv"
NEW_FILE="on_time_2016_8.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2016_8

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2016_8

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2016_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2016_8.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2016_8.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2016_9.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2016_9.zip

# Unzip data
unzip On_Time_On_Time_Performance_2016_9.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2016_9.csv"
NEW_FILE="on_time_2016_9.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2016_9

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2016_9

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2016_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2016_9.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2016_9.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2016_10.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2016_10.zip

# Unzip data
unzip On_Time_On_Time_Performance_2016_10.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2016_10.csv"
NEW_FILE="on_time_2016_10.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2016_10

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2016_10

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2016_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2016_10.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2016_10.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2016_11.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2016_11.zip

# Unzip data
unzip On_Time_On_Time_Performance_2016_11.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2016_11.csv"
NEW_FILE="on_time_2016_11.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2016_11

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2016_11

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2016_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2016_11.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2016_11.zip
rm /home/w205/staging/final_project/readme.html

##############################
# Name files transtats.bts.gov
URL="https://transtats.bts.gov//PREZIP/On_Time_On_Time_Performance_2016_12.zip"

# Get prezipped file
wget --no-check-certificate "$URL" -O On_Time_On_Time_Performance_2016_12.zip

# Unzip data
unzip On_Time_On_Time_Performance_2016_12.zip

# Remove the first line of files and rename
OLD_FILE="On_Time_On_Time_Performance_2016_12.csv"
NEW_FILE="on_time_2016_12.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project/flight_data/2016_12

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/final_project/flight_data/2016_12

# Remove from staging directory to free up memory
rm /home/w205/staging/final_project/on_time_2016_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2016_12.csv
rm /home/w205/staging/final_project/On_Time_On_Time_Performance_2016_12.zip
rm /home/w205/staging/final_project/readme.html
