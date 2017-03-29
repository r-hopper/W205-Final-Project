
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

wget "$URL1" -O On_Time_On_Time_Performance_2016_1.zip
wget "$URL2" -O On_Time_On_Time_Performance_2016_2.zip
wget "$URL3" -O On_Time_On_Time_Performance_2016_3.zip
wget "$URL4" -O On_Time_On_Time_Performance_2016_4.zip
wget "$URL5" -O On_Time_On_Time_Performance_2016_5.zip
wget "$URL6" -O On_Time_On_Time_Performance_2016_6.zip
wget "$URL7" -O On_Time_On_Time_Performance_2016_7.zip
wget "$URL8" -O On_Time_On_Time_Performance_2016_8.zip
wget "$URL9" -O On_Time_On_Time_Performance_2016_9.zip
wget "$URL10" -O On_Time_On_Time_Performance_2016_10.zip
wget "$URL11" -O On_Time_On_Time_Performance_2016_11.zip
wget "$URL12" -O On_Time_On_Time_Performance_2016_12.zip

# Unzip data
unzip On_Time_On_Time_Performance_2016_1.zip
unzip On_Time_On_Time_Performance_2016_2.zip
unzip On_Time_On_Time_Performance_2016_3.zip
unzip On_Time_On_Time_Performance_2016_4.zip
unzip On_Time_On_Time_Performance_2016_5.zip
unzip On_Time_On_Time_Performance_2016_6.zip
unzip On_Time_On_Time_Performance_2016_7.zip
unzip On_Time_On_Time_Performance_2016_8.zip
unzip On_Time_On_Time_Performance_2016_9.zip
unzip On_Time_On_Time_Performance_2016_10.zip
unzip On_Time_On_Time_Performance_2016_11.zip
unzip On_Time_On_Time_Performance_2016_12.zip

# Remove the first line of files and rename
OLD_FILE1="On_Time_On_Time_Performance_2016_1.csv"
NEW_FILE1="on_time_2016_1.csv"
tail -n +2 "$OLD_FILE1" > "$NEW_FILE1"

OLD_FILE2="On_Time_On_Time_Performance_2016_2.csv"
NEW_FILE2="on_time_2016_2.csv"
tail -n +2 "$OLD_FILE2" > "$NEW_FILE2"

OLD_FILE3="On_Time_On_Time_Performance_2016_3.csv"
NEW_FILE3="on_time_2016_3.csv"
tail -n +2 "$OLD_FILE3" > "$NEW_FILE3"

OLD_FILE4="On_Time_On_Time_Performance_2016_4.csv"
NEW_FILE4="on_time_2016_4.csv"
tail -n +2 "$OLD_FILE4" > "$NEW_FILE4"

OLD_FILE5="On_Time_On_Time_Performance_2016_5.csv"
NEW_FILE5="on_time_2016_5.csv"
tail -n +2 "$OLD_FILE5" > "$NEW_FILE5"

OLD_FILE6="On_Time_On_Time_Performance_2016_6.csv"
NEW_FILE6="on_time_2016_6.csv"
tail -n +2 "$OLD_FILE6" > "$NEW_FILE6"

OLD_FILE7="On_Time_On_Time_Performance_2016_7.csv"
NEW_FILE7="on_time_2016_7.csv"
tail -n +2 "$OLD_FILE7" > "$NEW_FILE7"

OLD_FILE8="On_Time_On_Time_Performance_2016_8.csv"
NEW_FILE8="on_time_2016_8.csv"
tail -n +2 "$OLD_FILE8" > "$NEW_FILE8"

OLD_FILE9="On_Time_On_Time_Performance_2016_9.csv"
NEW_FILE9="on_time_2016_9.csv"
tail -n +2 "$OLD_FILE9" > "$NEW_FILE9"

OLD_FILE10="On_Time_On_Time_Performance_2016_10.csv"
NEW_FILE10="on_time_2016_10.csv"
tail -n +2 "$OLD_FILE10" > "$NEW_FILE10"

OLD_FILE11="On_Time_On_Time_Performance_2016_11.csv"
NEW_FILE11="on_time_2016_11.csv"
tail -n +2 "$OLD_FILE11" > "$NEW_FILE11"

OLD_FILE12="On_Time_On_Time_Performance_2016_12.csv"
NEW_FILE12="on_time_2016_12.csv"
tail -n +2 "$OLD_FILE12" > "$NEW_FILE12"

# Create hdfs directories
hdfs dfs -mkdir /user/w205/final_project
hdfs dfs -mkdir /user/w205/final_project/flight_data
hdfs dfs -mkdir /user/w205/final_project/flight_data/2016_1
hdfs dfs -mkdir /user/w205/final_project/flight_data/2016_2
hdfs dfs -mkdir /user/w205/final_project/flight_data/2016_3
hdfs dfs -mkdir /user/w205/final_project/flight_data/2016_4
hdfs dfs -mkdir /user/w205/final_project/flight_data/2016_5
hdfs dfs -mkdir /user/w205/final_project/flight_data/2016_6
hdfs dfs -mkdir /user/w205/final_project/flight_data/2016_7
hdfs dfs -mkdir /user/w205/final_project/flight_data/2016_8
hdfs dfs -mkdir /user/w205/final_project/flight_data/2016_9
hdfs dfs -mkdir /user/w205/final_project/flight_data/2016_10
hdfs dfs -mkdir /user/w205/final_project/flight_data/2016_11
hdfs dfs -mkdir /user/w205/final_project/flight_data/2016_12

# Copy the files to hdfs
hdfs dfs -put $NEW_FILE1 /user/w205/final_project/flight_data/2016_1
hdfs dfs -put $NEW_FILE2 /user/w205/final_project/flight_data/2016_2
hdfs dfs -put $NEW_FILE3 /user/w205/final_project/flight_data/2016_3
hdfs dfs -put $NEW_FILE4 /user/w205/final_project/flight_data/2016_4
hdfs dfs -put $NEW_FILE5 /user/w205/final_project/flight_data/2016_5
hdfs dfs -put $NEW_FILE6 /user/w205/final_project/flight_data/2016_6
hdfs dfs -put $NEW_FILE7 /user/w205/final_project/flight_data/2016_7
hdfs dfs -put $NEW_FILE8 /user/w205/final_project/flight_data/2016_8
hdfs dfs -put $NEW_FILE9 /user/w205/final_project/flight_data/2016_9
hdfs dfs -put $NEW_FILE10 /user/w205/final_project/flight_data/2016_10
hdfs dfs -put $NEW_FILE11 /user/w205/final_project/flight_data/2016_11
hdfs dfs -put $NEW_FILE12 /user/w205/final_project/flight_data/2016_12

# Change directory back to original
cd $MY_PWD

# Exit
exit
