# SwaggerClient::Task

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**errored** | **String** | Describes the error for a Task that has encountered an error. | [optional] 
**events** | [**Array&lt;TaskEvent&gt;**](TaskEvent.md) | List of all TaskEvents that have been published for this particular task. | [optional] 
**state** | **String** | The Task&#39;s current state. Can be `running`, `stopped` or `complete`. | [optional] 
**time_completed** | **Integer** | Indicates the time when the task completed. Stored as a UNIX timestamp with nanosecond precision. | [optional] 
**time_started** | **Integer** | Indicates the time when the task was started. Stored as a UNIX timestamp with nanosecond precision. | [optional] 
**uuid** | **String** | The task&#39;s unique identifier. | [optional] 


