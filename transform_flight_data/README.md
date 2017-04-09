## Step 1

In Hive, run load_1997_2006.sql and load_2007_2016.sql. This will load all of the files from 1997-2016 into Hive, separated by month.

## Step 2

Run months_to_years.sql. This will compile all of the separate monthly files by year.

## Step 3

Run years_to_decades.sql. This will compile the files into two decades (1997-2006, 2007-2016).

## Step 4

Run pre_post_911.sql, which separates the years into pre- and post-9/11 instead.