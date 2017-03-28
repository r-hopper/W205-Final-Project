#!/bin/bash

# Save current directory
MY_CWD=$(pwd)

# Create staging directories
mkdir ~/staging
mkdir ~/staging/exercise_1

# Change to staging directory
cd ~/staging/exercise_1

# Get file from data.medicare.gov
MY_URL="https://data.medicare.gov/views/bg9k-emty/files/6c902f45-e28b-42f5-9f96-ae9d1e583472?content_type=application%2Fzip%3B%20charset%3Dbinary&filename=Hospital_Revised_Flatfiles.zip"
wget "$MY_URL" -O medicare_data.zip

# Unzip medicare_data
unzip medicare_data.zip

# Remove the first line of files and rename
OLD_FILE1="Hospital General Information.csv"
NEW_FILE1="hospitals.csv"

tail -n +2 "$OLD_FILE1" > "$NEW_FILE1"

OLD_FILE2="Timely and Effective Care - Hospital.csv"
NEW_FILE2="effective_care.csv"

tail -n +2 "$OLD_FILE2" > "$NEW_FILE2"

OLD_FILE3="Readmissions and Deaths - Hospital.csv"
NEW_FILE3="readmissions.csv"

tail -n +2 "$OLD_FILE3" > "$NEW_FILE3"

OLD_FILE4="Measure Dates.csv"
NEW_FILE4="measures.csv"

tail -n +2 "$OLD_FILE4" > "$NEW_FILE4"


OLD_FILE5="hvbp_hcahps_11_10_2016.csv"
NEW_FILE5="surveys_responses.csv"

tail -n +2 "$OLD_FILE5" > "$NEW_FILE5"


# Create hdfs directories

hdfs dfs -mkdir /user/w205/hospital_compare
hdfs dfs -mkdir /user/w205/hospital_compare/hospitals
hdfs dfs -mkdir /user/w205/hospital_compare/effective_care
hdfs dfs -mkdir /user/w205/hospital_compare/readmissions
hdfs dfs -mkdir /user/w205/hospital_compare/measures
hdfs dfs -mkdir /user/w205/hospital_compare/surveys_responses

# Copy the files to hdfs

hdfs dfs -put $NEW_FILE1 /user/w205/hospital_compare/hospitals
hdfs dfs -put $NEW_FILE2 /user/w205/hospital_compare/effective_care
hdfs dfs -put $NEW_FILE3 /user/w205/hospital_compare/readmissions
hdfs dfs -put $NEW_FILE4 /user/w205/hospital_compare/measures
hdfs dfs -put $NEW_FILE5 /user/w205/hospital_compare/surveys_responses

# Change directory back to original
cd $MY_PWD

# Exit
exit
