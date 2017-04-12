#Import Statements
import pandas as pd
import numpy as np
from math import radians, cos, sin, asin, sqrt

# Import Weather Stations data
stations = pd.read_fwf("weather_stations.txt", widths = [11,9,10,7,3,31,4,4,6], header = None)
# ID            1-11   Character
# LATITUDE     13-20   Real
# LONGITUDE    22-30   Real
# ELEVATION    32-37   Real
# STATE        39-40   Character
# NAME         42-71   Character
# GSN FLAG     73-75   Character
# HCN/CRN FLAG 77-79   Character
# WMO ID       81-85   Character
# Add column names
stations.columns = ['station_id','lat','lon','elev','state','name','GSN_FLAG','HCN_CRN_FLAG','WMO_ID']
# Give it a country code
stations['country'] = stations.station_id.str[0:2]
# Sort by lat lon
stations.sort_values(['lat', 'lon'])

# Import Airport data
airports = pd.read_csv('655213050_T_MASTER_CORD.csv')
# Filter down to active airports
airports_active = airports[airports.AIRPORT_IS_LATEST == 1]
# Drop columns we don't need
airports_active.drop(['DISPLAY_AIRPORT_NAME', 'DISPLAY_AIRPORT_CITY_NAME_FULL',
                        'AIRPORT_WAC', 'AIRPORT_COUNTRY_NAME', 'AIRPORT_STATE_NAME',
                        'AIRPORT_STATE_FIPS', 'CITY_MARKET_ID', 'DISPLAY_CITY_MARKET_NAME_FULL',
                        'CITY_MARKET_WAC', 'LAT_DEGREES', 'LAT_HEMISPHERE', 'LAT_MINUTES',
                        'LAT_SECONDS', 'LON_DEGREES', 'LON_HEMISPHERE', 'LON_MINUTES',
                        'LON_SECONDS', 'AIRPORT_START_DATE', 'AIRPORT_THRU_DATE',
                        'AIRPORT_IS_CLOSED', 'AIRPORT_IS_LATEST', 'Unnamed: 28'])
# Fields to keep
#'AIRPORT_SEQ_ID', 'AIRPORT_ID', 'AIRPORT', 'AIRPORT_COUNTRY_CODE_ISO',
#'AIRPORT_STATE_CODE', 'LATITUDE', 'LONGITUDE',
airports_active.sort_values(['LATITUDE','LONGITUDE'])

# Match weather stations to airports by lat/lon
for index, airport in airports_active.iterrows():
    dist_temp = 999
    stat_id = 'None'

    for index, station in stations.iterrows():
        if abs(airport.LATITUDE - station.lat) > 0.1:
            pass
        elif abs(airport.LONGITUDE - station.lon) > 0.1:
            pass
        else:
            # convert decimal degrees to radians
            lon1, lat1, lon2, lat2 = map(radians, [airport.LONGITUDE, airport.LATITUDE, station.lon, station.lat])
            # haversine formula
            dlon = lon2 - lon1
            dlat = lat2 - lat1
            a = sin(dlat/2)**2 + cos(lat1) * cos(lat2) * sin(dlon/2)**2
            c = 2 * asin(sqrt(a))
            km = 6367 * c
            if km < dist_temp:
                dist_temp = km
                stat_id = station.station_id
            else:
                pass

    airport['distance'] = dist_temp
    airport['station_id'] = stat_id

# Export csv
airports.to_csv('airports_stations.csv', columns = ['AIRPORT_SEQ_ID', 'AIRPORT_ID', 'AIRPORT', 'AIRPORT_COUNTRY_CODE_ISO',
'AIRPORT_STATE_CODE', 'LATITUDE', 'LONGITUDE','distance','station_id'])
