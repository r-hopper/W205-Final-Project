-- Find number of days of data
set years = select count(distinct date_yyyymmdd)/365 from precip;

-- modify precip for dates
drop table if exists precip_format;
create table precip_format as
    select *,
    substring(date_yyyymmdd, 0, 4) as year,
    substring(date_yyyymmdd, 5, 2) as month,
    substring(date_yyyymmdd, 7, 2) as day,
    concat(substring(date_yyyymmdd, 0, 4), '-', substring(date_yyyymmdd, 5, 2), '-',substring(date_yyyymmdd, 7, 2)) as date_rev
    from precip;

-- Find average days of precipitation at 25 busiest US airports per year
drop table if exists precip_days_ann;
create table precip_days_ann as
SELECT AIRPORT, cast((count(distinct date_yyyymmdd)) / 10.25 as int) as ann_days
from precip
where airport in ('ATL', 'ORD', 'DFW', 'DEN', 'LAX', 'PHX', 'IAH', 'LAS', 'DTW', 'MSP', 'EWR', 'SLC',
    'SFO', 'MCO', 'BOS', 'CLT', 'JFK', 'LGA', 'BWI', 'SEA', 'PHL', 'SAN', 'MDW', 'DCA', 'TPA')
group by AIRPORT
order by ann_days desc;

-- TRYING TO GET IT TO USE HIVE VARIABLE FOR YEARS IN CALCULATION. RETURNS NULL
-- drop table if exists avg_precip;
-- create table avg_precip as
-- SELECT AIRPORT, cast((count(distinct date_yyyymmdd)) / '${hiveconf:years}' as decimal (6,2)) as ann_days
-- from precip
-- where airport in ('ATL', 'ORD', 'DFW', 'DEN', 'LAX', 'PHX', 'IAH', 'LAS', 'DTW', 'MSP', 'EWR', 'SLC',
--     'SFO', 'MCO', 'BOS', 'CLT', 'JFK', 'LGA', 'BWI', 'SEA', 'PHL', 'SAN', 'MDW', 'DCA', 'TPA')
-- group by AIRPORT
-- order by ann_days desc;

--  Find depth of rain at each airport per month
drop table if exists most_rain;
create table most_rain as
SELECT AIRPORT, month, year, sum(magnitude) as total_rain
from precip_format
where weather_type = 'PRCP'
and airport in ('ATL', 'ORD', 'DFW', 'DEN', 'LAX', 'PHX', 'IAH', 'LAS', 'DTW', 'MSP', 'EWR', 'SLC',
    'SFO', 'MCO', 'BOS', 'CLT', 'JFK', 'LGA', 'BWI', 'SEA', 'PHL', 'SAN', 'MDW', 'DCA', 'TPA')
group by AIRPORT, month, year
order by total_rain desc
limit 25;

-- Find average depth of rain per month per airport
drop table if exists monthly_rain;
create table monthly_rain as
SELECT AIRPORT, month, cast(sum(magnitude) / count(distinct year) as decimal (5,1)) as total_rain, count(distinct year) as years
from precip_format
where weather_type = 'PRCP'
and airport in ('ATL', 'ORD', 'DFW', 'DEN', 'LAX', 'PHX', 'IAH', 'LAS', 'DTW', 'MSP', 'EWR', 'SLC',
    'SFO', 'MCO', 'BOS', 'CLT', 'JFK', 'LGA', 'BWI', 'SEA', 'PHL', 'SAN', 'MDW', 'DCA', 'TPA')
group by AIRPORT, month
order by total_rain desc;


-- Find depth of snow at each airport
drop table if exists most_snow;
create table most_snow as
SELECT AIRPORT, sum(magnitude) as total_snow
from precip_format
where weather_type = 'SNOW'
and airport in ('ATL', 'ORD', 'DFW', 'DEN', 'LAX', 'PHX', 'IAH', 'LAS', 'DTW', 'MSP', 'EWR', 'SLC',
    'SFO', 'MCO', 'BOS', 'CLT', 'JFK', 'LGA', 'BWI', 'SEA', 'PHL', 'SAN', 'MDW', 'DCA', 'TPA')
group by AIRPORT
order by total_snow desc;

-- Find average depth of rain per month per airport
drop table if exists monthly_snow;
create table monthly_snow as
SELECT AIRPORT, month, cast(sum(magnitude) / count(distinct year) as decimal (5,1)) as total_snow, count(distinct year) as years
from precip_format
where weather_type = 'SNOW'
and airport in ('ATL', 'ORD', 'DFW', 'DEN', 'LAX', 'PHX', 'IAH', 'LAS', 'DTW', 'MSP', 'EWR', 'SLC',
    'SFO', 'MCO', 'BOS', 'CLT', 'JFK', 'LGA', 'BWI', 'SEA', 'PHL', 'SAN', 'MDW', 'DCA', 'TPA')
group by AIRPORT, month
order by total_snow desc;


-- 25 busiest US airports
-- 'ATL', 'ORD', 'DFW', 'DEN', 'LAX', 'PHX', 'IAH', 'LAS', 'DTW', 'MSP', 'EWR', 'SLC',
-- 'SFO', 'MCO', 'BOS', 'CLT', 'JFK', 'LGA', 'BWI', 'SEA', 'PHL', 'SAN', 'MDW', 'DCA', 'TPA'


