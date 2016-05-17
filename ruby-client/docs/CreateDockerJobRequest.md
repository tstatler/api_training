# SwaggerClient::CreateDockerJobRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allow_egress** | **BOOLEAN** | If `true`, the job is allowed outbound network connectivity. | [optional] 
**env** | **Hash&lt;String, String&gt;** | List of environment variables that are added to the job. | [optional] 
**exposed_ports** | **Array&lt;Integer&gt;** | An array of ports exposed on job instances. | [optional] 
**group** | **String** | Group to run Docker image as (default: picked by Apcera). | [optional] 
**hard_scheduling_tags** | **Hash&lt;String, BOOLEAN&gt;** | List of hard scheduling tags. See [Hard Tags](http://enterprise-docs.apcera.com/other/job-scheduling/#hard-tags) for more information. | [optional] 
**ignore_volumes** | **BOOLEAN** | If `true`, volumes specified in the Docker image spec are ignored and no data will be persisted. If `false` or not specified, and the Docker image specifies volumes, then you must supply a provider FQN in the request object&#39;s `volume_provider_fqn` property. | [optional] 
**image_url** | **String** | Docker image URL. | [optional] 
**interactive** | **BOOLEAN** | If `true`, the start command is removed from the job definition. The start command string is saved to the `DOCKER_START_COMMAND` environment variable on the job&#39;s environment. | [optional] 
**job_fqn** | **String** | The fully-qualified name of the job to create from the Docker image. | [optional] 
**resources** | [**Resource**](Resource.md) | A list of compute and network resources that the job can consume. | [optional] 
**restart** | [**RestartConfig**](RestartConfig.md) | Configuration related to restarting the job. | [optional] 
**routes** | **Hash&lt;String, Integer&gt;** | A map of routes to the ports where the routes are available. | [optional] 
**soft_scheduling_tags** | **Hash&lt;String, BOOLEAN&gt;** | List of soft scheduling tags. See [Soft Tags](http://enterprise-docs.apcera.com/other/job-scheduling/#soft-tags) for more information. | [optional] 
**start** | **BOOLEAN** | If `true` the job is started after its created. Default is `false`. | [optional] 
**start_command** | **Array&lt;String&gt;** | The command used to start the process, specified as an array. The first element in the array is the command/binary to execute, and subsequent array elements are command arguments. The expanded command string is passed directly to `exec()` without shell or template interpretation. | [optional] 
**stop_command** | **Array&lt;String&gt;** | The command used to stop the process, specified as an array. The first element in the array is the command/binary to execute, and subsequent array elements are command arguments. The expanded command string is passed directly to `exec()` without shell or template interpretation. | [optional] 
**user** | **String** | User to run Docker image as. Defaults to user in the Docker image configuration, or &#39;root&#39; if image doesn&#39;t have a user configured. | [optional] 
**volume_provider_fqn** | **String** | Volume provider&#39;s fully-qualified name. Required if `ignore_volumes` is not set to `true`. | [optional] 
**volumes** | **Array&lt;String&gt;** | A list of volumes used by the Docker image for persistence. | [optional] 


