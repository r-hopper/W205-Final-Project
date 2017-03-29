-- Creating flight_data schema in Hive

-- Jan 2016
DROP TABLE IF EXISTS flights_2016_1;
CREATE EXTERNAL TABLE flights_2016_1 (
year string,
quarter string,
month string,
dayofmonth string,
dayofweek string,
flightdate string,
uniquecarrier string,
airlineid string,
carrier string,
tailnum string,
flightnum string,
originairportid string,
originairportseqid string,
origincitymarketid string,
origin string,
origincityname string,
originstate string,
originstatefips string,
originstatename string,
originwac string,
destairportid string,
destairportseqid string,
destcitymarketid string,
dest string,
destcityname string,
deststate string,
deststatefips string,
deststatename string,
destwac string,
crsdeptime string,
deptime string,
depdelay string,
depdelayminutes string,
depdel15 string,
departuredelaygroups string,
deptimeblk string,
taxiout string,
wheelsoff string,
wheelson string,
taxiin string,
crsarrtime string,
arrtime string,
arrdelay string,
arrdelayminutes string,
arrdel15 string,
arrivaldelaygroups string,
arrtimeblk string,
cancelled string,
cancellationcode string,
diverted string,
crselapsedtime string,
actualelapsedtime string,
airtime string,
flights string,
distance string,
distancegroup string,
carrierdelay string,
weatherdelay string,
nasdelay string,
securitydelay string,
lateaircraftdelay string,
firstdeptime string,
totaladdgtime string,
longestaddgtime string,
divairportlandings string,
divreacheddest string,
divactualelapsedtime string,
divarrdelay string,
divdistance string,
div1airport string,
div1airportid string,
div1airportseqid string,
div1wheelson string,
div1totalgtime string,
div1longestgtime string,
div1wheelsoff string,
div1tailnum string,
div2airport string,
div2airportid string,
div2airportseqid string,
div2wheelson string,
div2totalgtime string,
div2longestgtime string,
div2wheelsoff string,
div2tailnum string,
div3airport string,
div3airportid string,
div3airportseqid string,
div3wheelson string,
div3totalgtime string,
div3longestgtime string,
div3wheelsoff string,
div3tailnum string,
div4airport string,
div4airportid string,
div4airportseqid string,
div4wheelson string,
div4totalgtime string,
div4longestgtime string,
div4wheelsoff string,
div4tailnum string,
div5airport string,
div5airportid string,
div5airportseqid string,
div5wheelson string,
div5totalgtime string,
div5longestgtime string,
div5wheelsoff string,
div5tailnum string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.OpenCSVSerde' 
WITH SERDEPROPERTIES(
"separatorChar"=',',
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION
'/user/w205/final_project/flight_data/2016_1';




