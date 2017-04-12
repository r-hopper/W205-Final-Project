#!/bin/bash

# Change to staging directory
cd ~/staging/final_project

# Load weather data from 1997, weather stations, and airports
##############################
# Get airport and weather station location files
URL_airports="https://transtats.bts.gov/ftproot/TranStatsData/655213050_T_MASTER_CORD.zip"
URL_stations="ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/ghcnd-stations.txt"
wget --no-check-certificate "$URL_airports" -O Airports.zip
wget --no-check-certificate "$URL_stations" -O weather_stations.txt
# Unzip data
unzip Airports.zip

# Get weather data from 2007 to current

# Get GHCN data by year
# Set current year
cur_year=`date +"%Y"`
start_year=2007
# Iterate through years and download data
for (( c=$start_year; c<=$cur_year; c++))
do
    URL_GHCN="ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/by_year/$c.csv.gz"
    wget --no-check-certificate "$URL_GHCN"
    gunzip "$c.csv.gz"
done

# Modify airports to remove headers
OLD_FILE="655213050_T_MASTER_CORD.csv"
NEW_FILE="airports.csv"
tail -n +2 $OLD_FILE > $NEW_FILE

# Load to HDFS
# hdfs dfs -mkdir /user/w205/final_project
hdfs dfs -mkdir /user/w205/final_project/weather

hdfs dfs -put airports.csv /user/w205/final_project/weather
hdfs dfs -put weather_stations.txt /user/w205/final_project/weather
for (( c=$start_year; c<=$cur_year; c++))
do
    hdfs dfs -put $c.csv /user/w205/final_project/weather
done

hdfs dfs -put airports_stations.csv /user/w205/final_project/weather

# Clean up directory
rm Airports.zip

# All data from GHCN is too big. 8 GB. Better to take single years over time of study and stitch together.
#URL_GHCN="ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/ghcnd_all.tar.gz"
# wget --no-check-certificate "$URL_GHCN" -O ghcnd_all.tar.gz
#tar -vxf ghcnd_all.tar.gz

# Get Weather Data year by year
# URL_GHCN_1997="ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/by_year/1997.csv.gz"
# URL_GHCN_1998="ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/by_year/1998.csv.gz"
# URL_GHCN_1999="ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/by_year/1999.csv.gz"
# URL_GHCN_2000="ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/by_year/2000.csv.gz"
# URL_GHCN_2001="ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/by_year/2001.csv.gz"
# URL_GHCN_2002="ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/by_year/2002.csv.gz"
# URL_GHCN_2003="ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/by_year/2003.csv.gz"
# URL_GHCN_2004="ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/by_year/2004.csv.gz"
# URL_GHCN_2005="ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/by_year/2005.csv.gz"
# URL_GHCN_2006="ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/by_year/2006.csv.gz"
# URL_GHCN_2007="ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/by_year/2007.csv.gz"
# URL_GHCN_2008="ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/by_year/2008.csv.gz"
# URL_GHCN_2009="ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/by_year/2009.csv.gz"
# URL_GHCN_2010="ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/by_year/2010.csv.gz"
# URL_GHCN_2011="ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/by_year/2011.csv.gz"
# URL_GHCN_2012="ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/by_year/2012.csv.gz"
# URL_GHCN_2013="ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/by_year/2013.csv.gz"
# URL_GHCN_2014="ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/by_year/2014.csv.gz"
# URL_GHCN_2015="ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/by_year/2015.csv.gz"
# URL_GHCN_2016="ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/by_year/2016.csv.gz"
# URL_GHCN_2017="ftp://ftp.ncdc.noaa.gov/pub/data/ghcn/daily/by_year/2017.csv.gz"
# wget --no-check-certificate "$URL_GHCN_1997"
# wget --no-check-certificate "$URL_GHCN_1998"
# wget --no-check-certificate "$URL_GHCN_1999"
# wget --no-check-certificate "$URL_GHCN_2000"
# wget --no-check-certificate "$URL_GHCN_2001"
# wget --no-check-certificate "$URL_GHCN_2002"
# wget --no-check-certificate "$URL_GHCN_2003"
# wget --no-check-certificate "$URL_GHCN_2004"
# wget --no-check-certificate "$URL_GHCN_2005"
# wget --no-check-certificate "$URL_GHCN_2006"
# wget --no-check-certificate "$URL_GHCN_2007"
# wget --no-check-certificate "$URL_GHCN_2008"
# wget --no-check-certificate "$URL_GHCN_2009"
# wget --no-check-certificate "$URL_GHCN_2010"
# wget --no-check-certificate "$URL_GHCN_2011"
# wget --no-check-certificate "$URL_GHCN_2012"
# wget --no-check-certificate "$URL_GHCN_2013"
# wget --no-check-certificate "$URL_GHCN_2014"
# wget --no-check-certificate "$URL_GHCN_2015"
# wget --no-check-certificate "$URL_GHCN_2016"
# wget --no-check-certificate "$URL_GHCN_2017"
# gunzip 1997.csv.gz
# gunzip 1998.csv.gz
# gunzip 1999.csv.gz
# gunzip 2000.csv.gz
# gunzip 2001.csv.gz
# gunzip 2002.csv.gz
# gunzip 2003.csv.gz
# gunzip 2004.csv.gz
# gunzip 2005.csv.gz
# gunzip 2006.csv.gz
# gunzip 2007.csv.gz
# gunzip 2008.csv.gz
# gunzip 2009.csv.gz
# gunzip 2010.csv.gz
# gunzip 2012.csv.gz
# gunzip 2013.csv.gz
# gunzip 2014.csv.gz
# gunzip 2015.csv.gz
# gunzip 2016.csv.gz
# gunzip 2017.csv.gz
