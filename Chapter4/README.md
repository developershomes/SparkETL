
# Chapter 4 -> Spark ETL with AWS (S3 bucket)

Task to do 
1. Install required spark libraries
2. Create connection with AWS S3 bucket
3. Read data from S3 bucket and store into dataframe
4. Transform data
5. write data into parquet file 
6. write data into JSON file

Reference: <br/>
https://registry.opendata.aws/speedtest-global-performance/

command:<br/>
aws s3 ls --no-sign-request s3://ookla-open-data/parquet/performance/type=fixed/year=2019/quarter=1/2019-01-01_performance_fixed_tiles.parquet <br/>
aws s3 cp --no-sign-request s3://ookla-open-data/parquet/performance/type=fixed/year=2019/quarter=1/2019-01-01_performance_fixed_tiles.parquet sample.parquet

Solution Notebook:<br/>
[Spark Notebook](chapter3.ipynb)

Blog with Explaination: 

YouTube video with Explanation:
