# Sample code from WU

import urllib2
import json
# f = urllib2.urlopen('http://api.wunderground.com/api/WU_9585652/geolookup/conditions/q/IA/Cedar_Rapids.json')
# json_string = f.read()
# parsed_json = json.loads(json_string)
# location = parsed_json['location']['city']
# temp_f = parsed_json['current_observation']['temp_f']
# print ("Current temperature in %s is: %s".format(location, temp_f))
# f.close()

# Import airports with lat lon
import csv

with open('weather_data/airports.csv', mode='r') as infile:
    reader = csv.reader(infile)
    airports = dict((rows[2],(rows[18], rows[23])) for rows in reader)

#airports = csv.reader(open('/final_project/weather/airports.csv', 'rb')) # edit path
airports_25 = []
top25 = ['ATL', 'ORD', 'DFW', 'DEN', 'LAX', 'PHX', 'IAH', 'LAS', 'DTW', 'MSP', 'EWR', 'SLC',
    'SFO', 'MCO', 'BOS', 'CLT', 'JFK', 'LGA', 'BWI', 'SEA', 'PHL', 'SAN', 'MDW', 'DCA', 'TPA']

# Import likelihood results
with open('flight_app/final_csv/Q3_likelihood_based_on_depth.csv', mode = 'r') as infile:
    reader = csv.reader(infile)
    likelihood_data = dict((rows[0],(rows[1], rows[2], rows[3], rows[4], rows[5], rows[6], rows[7], rows[8])) for rows in reader)
#likelihood_data = csv.reader(open('/flight_app/final_csv/Q3_likelihood_based_on_depth.csv', 'rb'))

# Import volume of flights
with open('flight_app/final_csv/top25airportsdep.csv', mode = 'r') as infile:
    reader = csv.reader(infile)
    volume = dict((rows[1], (int(rows[2]) + int(rows[3]) + int(rows[4]) + int(rows[5]) + int(rows[6]) + int(rows[7]) + int(rows[8]) + int(rows[9]) + int(rows[10]) + int(rows[11]))/3650) for rows in reader)

# Get weather data
import requests

# Set some empty dictionaries
rain = {}
likelihood = {}
delays = {}

# Start a for loop
for code in top25:
    lat = airports[code][0]
    lon = airports[code][1]
    # Get weather data for each airport based on airport lat/lon
    # r = requests.get('http://api.wunderground.com/api/bd7371e9065e60d4/forecast10day/q/{0},{1}.json'.format(lat, lon))
    # data = r.json

    f = urllib2.urlopen('http://api.wunderground.com/api/bd7371e9065e60d4/forecast10day/q/{0},{1}.json'.format(lat, lon))
    json_string = f.read()
    parsed_json = json.loads(json_string)
    print parsed_json.keys()

    # assmeble daily rainfall depth
    rain_temp = []
    for day in parsed_json['forecast']['simpleforecast']['forecastday']:
        rain_temp.append(int(day['qpf_allday']['mm']))
    rain[code] = rain_temp

    # Assemble likelihood based on rainfall depth
    likelihood_temp = []
    for i in range(len(rain_temp)):
        if rain_temp[i] == 0:
            likelihood_temp.append(float(likelihood_data[code][0]))
        elif rain_temp[i] <= 6.3:
            likelihood_temp.append(float(likelihood_data[code][1]))
        elif rain_temp[i] <= 12.7:
            likelihood_temp.append(float(likelihood_data[code][2]))
        elif rain_temp[i] <= 25.4:
            likelihood_temp.append(float(likelihood_data[code][3]))
        elif rain_temp[i] <= 38.1:
            likelihood_temp.append(float(likelihood_data[code][4]))
        elif rain_temp[i] <= 50.8:
            likelihood_temp.append(float(likelihood_data[code][5]))
        elif rain_temp[i] <= 76.2:
            likelihood_temp.append(float(likelihood_data[code][6]))
        else:
            likelihood_temp.append(float(likelihood_data[code][7]))
    likelihood[code] = likelihood_temp

    # Calculate delays per day based on likelihood
    delays_temp = []
    for i in range(len(rain_temp)):
        delays_temp.append(round(volume[code] * likelihood_temp[i],0))
    delays[code] = delays_temp

f.close()
with open('flight_app/final_csv/Q4_forecast_delays.csv', 'wb') as outfile:
    w = csv.writer(outfile)
    for key in delays.keys():
        w.writerow((key, delays[key][0], delays[key][1], delays[key][2], delays[key][3], delays[key][4], delays[key][5], delays[key][6], delays[key][7], delays[key][8], delays[key][9]))


