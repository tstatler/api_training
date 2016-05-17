# SwaggerClient::RolloutConfig

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errored_state_window** | **Integer** | The number of seconds a job should be cycling between flapping states before being considered in an errored state and stop attempting any restarts. | [optional] 
**flapping_minimum_restarts** | **Integer** | The minimum number of tasks that must have failed in order to trigger a flapping state. | [optional] 
**flapping_percent** | **Float** | The number of instances that must have restarted in a given window for flapping to kick in. | [optional] 
**flapping_window** | **Integer** | The number of seconds over which the job&#39;s flapping window operates. | [optional] 
**force_stop_old_instances_after** | **Integer** | If this field is non-zero then it will be used to represent how long an old version of a job is allowed to exist in the cluster. If this is zero then no fixed length is established and updates will be applied by starting a new version and then only when that instance is running will the old instance be killed. | [optional] 


