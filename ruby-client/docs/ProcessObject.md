# SwaggerClient::ProcessObject

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**environment** | **Hash&lt;String, String&gt;** | An optional list of environment values to attach to the process within the job. | [optional] 
**group** | **String** | Name of the group used to run the process within a container. An empty string lets the the instance manager choose a group. | [optional] 
**heavy** | **BOOLEAN** | Start the process in \&quot;heavy\&quot; mode: giving it pid 1.  Only one process within the job can set this flag to true. | [optional] 
**start_command** | **String** | The command used to start the process within the container&#39;s isolation context. | [optional] 
**start_command_raw** | **Array&lt;String&gt;** | The command used to start the process, specified as an array. The first element in the array is the command/binary to execute, and subsequent array elements are command arguments. The expanded command string is passed directly to `exec()` without shell or template interpretation.  If `start_command_raw` is provided then `start_command`, if specified, is ignored. This property is typically used with exact processes that have an extremely well-known start command.  | [optional] 
**start_command_timeout** | **Integer** | The number of seconds that the system will wait for startup to complete. This includes the time that it will take for ports to become available. | [optional] 
**stop_command** | **String** | The command used to stop the process within the container&#39;s isolation context. If not defined, OS-level signals (like `TERM`) may be used to shut down the process. | [optional] 
**stop_command_raw** | **Array&lt;String&gt;** | The command used to stop the process, specified as an array. The first element in the array is the command/binary to execute, and subsequent array elements are command arguments. The expanded command string is passed directly to `exec()` without shell or template interpretation.  If `stop_command_raw` is provided then `stop_command`, if specified, is ignored. This property is typically used with exact processes that have an extremely well-known start command.  | [optional] 
**stop_timeout** | **Integer** | The number of seconds to give the process after `stop_command` has been run before forcing the command to shutdown via OS-level signals, such as `TERM`. If no `stop_command` is provided for the process, OS-level signals (like `TERM`) may be used to terminate the process. | [optional] 
**user** | **String** | Name of the user used to run the process within a container. An empty string lets the the instance manager choose a user. | [optional] 


