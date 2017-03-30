#!/bin/bash

# Save current directory
MY_CWD=$(pwd)

# Create staging directories
mkdir ~/staging
mkdir ~/staging/final_project

# Change to staging directory
cd ~/staging/final_project

# Create main hdfs directory
hdfs dfs -mkdir /user/w205/final_project
hdfs dfs -mkdir /user/w205/final_project/flight_data

echo "This script is about to run another script."
#!/bin/bash
load_2016.sh
echo "This script has just run another script."

# Change directory back to original
cd $MY_PWD

# Exit
exit
