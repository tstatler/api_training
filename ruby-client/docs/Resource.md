# SwaggerClient::Resource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**cpu** | **Integer** | Milliseconds of CPU time per second of physical time allocated to the job. May be greater than 1000ms/second in cases where time is across multiple cores. | [optional] 
**disk** | **Integer** | Amount of disk space allocated to the job, in MB. | [optional] 
**memory** | **Integer** | Memory allocated to job, in MB. | [optional] 
**netmax** | **Integer** | Maximum amount of network throughput (ceiling) allowed, in Mbps. | [optional] 
**network** | **Integer** | Amount of network throughput (floor) allocated to the job, in Mbps. | [optional] 


