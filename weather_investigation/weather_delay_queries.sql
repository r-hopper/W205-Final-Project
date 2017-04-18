-- Test joins. Showo aiport days with delay performance that day

drop table if exists delays_weather;
create table delays_weather as
    select airport, date_rev, magnitude, weather_type,
    count(flightnum) as total_flights,
    count(case when depdelay > 0 then 1 else null end) as delayed_flights,
    sum(depdelay) as total_delays,
    count(case when weatherdelay > 0 then 1 else null end > 0) as delayed_weather,
    sum(weatherdelay) as total_weather_delay,
    cast(count(case when depdelay > 0 then 1 else null end) / count(flightnum) as decimal (3,2)) as percent_delayed
    from precip_format, flights_2012_2016 
    where precip_format.airport = flights_2012_2016.origin
    and precip_format.date_rev = flights_2012_2016.flightdate
    and airport in ('ATL', 'ORD', 'DFW', 'DEN', 'LAX', 'PHX', 'IAH', 'LAS', 'DTW', 'MSP', 'EWR', 'SLC', 
        'SFO', 'MCO', 'BOS', 'CLT', 'JFK', 'LGA', 'BWI', 'SEA', 'PHL', 'SAN', 'MDW', 'DCA', 'TPA')
    group by airport, date_rev, magnitude, weather_type
    order by percent_delayed desc;

-- The worst days for flight delays in the last 5 years were not entirely weather related.

