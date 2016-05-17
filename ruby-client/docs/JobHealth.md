# SwaggerClient::JobHealth

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**flapping** | **BOOLEAN** | Indicates if job is in a flapping state (true) or not (false). | [optional] 
**instance_state_count** | [**Hash&lt;String, InstanceState&gt;**](InstanceState.md) | Map of instance states to the number of instances in that state, as reported by the health manager. | [optional] 
**score** | **Integer** | Score is the ratio of running instances to configured instances, capped between 0 and 1. | [optional] 
**uuid** | **BOOLEAN** | UUID of the job. | [optional] 


