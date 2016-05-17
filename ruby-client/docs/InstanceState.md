# SwaggerClient::InstanceState

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**first_running** | **Integer** | Number of instances where the job was started and is about to move into the `RUNNING` state. | [optional] 
**new** | **Integer** | Number of instances in the `NEW` state. | [optional] 
**removed** | **Integer** | Number of instances that are no longer consuming resources and have no remaining configuration on the system. | [optional] 
**running** | **Integer** | Number of instances that are running. | [optional] 
**setup** | **Integer** | Number of instances in which packages are being installed, networking initialized, etc. | [optional] 
**starting** | **Integer** | Number of instances whose processes have been started, but have not been verified to be running. | [optional] 
**starting_wait** | **Integer** | Number of instances that are waiting for dependent jobs to become ready. | [optional] 
**stopping** | **Integer** | Number of instances that are in the process of having their processes shutdown. | [optional] 
**stopping_wait** | **Integer** | Number of instances that are being stopped, but have jobs depending on it. In this case the other jobs must first transition past the `STOPPING` state before this instance can be stopped. | [optional] 
**teardown** | **Integer** | Number of instances whose user-defined processes have been killed, and the instance is being removed from cluster resources. | [optional] 
**updating** | **Integer** | Number of instances that are in a state that allows the instance to update various properties of the container. | [optional] 


