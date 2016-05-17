# SwaggerClient::Instances

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**announced_routes** | **BOOLEAN** | Indicates whether the routes for this instance have been announced. | [optional] 
**created_time** | **Float** | UNIX timestamp for when instance was created. | [optional] 
**exit_code** | **Integer** | Exit code of the main processes; should only be checked if `exited` is `true`. | [optional] 
**exited** | **BOOLEAN** | Set to true if the instance started and its main process managed to exit. | [optional] 
**failed** | **BOOLEAN** | Set to `true` if the instance has failed in some way. | [optional] 
**host** | **String** | Name of the host the instance is running on. | [optional] 
**instance_manager** | **String** | UUID of the instance manager running the instance. | [optional] 
**job_version_id** | **Integer** | The sequence number of the job the instance is running. | [optional] 
**state** | [**InstanceState**](InstanceState.md) | State of the instance. | [optional] 
**uuid** | **String** | The instance&#39;s unique identifier. | [optional] 


