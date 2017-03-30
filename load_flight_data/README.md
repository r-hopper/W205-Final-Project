## Step 1
In your EC2 instance, mount your EBS volume, and then start Hadoop, Postgres, and the metastore. 

## Step 2
In this directory (load_flight_data), run `./load_flight_data.sh`. This will create the necessary directories in HDFS, grab the flight data from transtats.gov, and load the files into HDFS.
