# SwaggerClient::TaskEvent

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**payload** | **Hash&lt;String, String&gt;** | Extra information about the TaskEvent. | [optional] 
**stage** | **String** | A logical grouping of subtasks. A stage could be \&quot;Creating Job\&quot; or \&quot;Downloading Packages\&quot;. | [optional] 
**subtask** | [**SubTask**](SubTask.md) | A description of the sub-task that this TaskEvent describes. | [optional] 
**tags** | **Array&lt;String&gt;** | An list of tags that provide a hint about what is being tracked. | [optional] 
**task_event_type** | **String** | The type of message this TaskEvent contains. | [optional] 
**task_uuid** | **String** | UUID of the Task that stores this event. | [optional] 
**thread** | **String** | Represents a logically independent procedure within a Task. For instance, a thread could be \&quot;job1\&quot; or \&quot;job2\&quot;, or \&quot;Link job1 and job2\&quot;. | [optional] 
**time** | **Integer** | Time in UNIX nanoseconds immediately before the TaskEvent gets announced on NATS. | [optional] 
**uuid** | **String** | UUID of the Task that stores this event. | [optional] 


