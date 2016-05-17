# SwaggerClient::Job

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**bindings** | [**Hash&lt;String, Binding&gt;**](Binding.md) | A list of service bindings associated with the job. | [optional] 
**created_at** | **DateTime** | Time at which the job was created. | [optional] 
**created_by** | **String** | The principal name of user who created the job. | [optional] 
**docker_origin** | [**DockerOrigin**](DockerOrigin.md) | For jobs that run Docker images, specifies the Docker registry, image name and tag that were used to create the job. This field can&#39;t be changed after the job is created. | [optional] 
**fqn** | **String** | Job&#39;s fully-qualified name. | 
**hard_scheduling_tags** | **Hash&lt;String, BOOLEAN&gt;** | List of hard scheduling tags. See [Hard Tags](http://enterprise-docs.apcera.com/other/job-scheduling/#hard-tags) for more information. | [optional] 
**health** | [**JobHealth**](JobHealth.md) | Indicates the health of the job. If empty then the job&#39;s health has not been retrieved from the health manager yet. | [optional] 
**logs** | [**Array&lt;Log&gt;**](Log.md) | An array of logs the job will be producing that should be collected for aggregation or streaming. | [optional] 
**name** | **String** | Name of the job. | [optional] 
**network_ref** | [**JobNetworkReference**](JobNetworkReference.md) | An object that contains information about the [virtual network](#virtualnetwork) the job belongs to. | [optional] 
**num_instances** | **Integer** | The number of job instances currently running. | [optional] 
**packages** | [**Array&lt;PackageInfo&gt;**](PackageInfo.md) | Array of packages for this Job. Includes both user-specified packages and the packages calculated by the package manager. | [optional] 
**ports** | [**Array&lt;Port&gt;**](Port.md) | An array of ports associated with the job. | [optional] 
**processes** | [**Hash&lt;String, Process&gt;**](Process.md) | A list of processes associated with the job. | [optional] 
**resources** | [**Resource**](Resource.md) | A list of compute and network resources that this job can consume. | [optional] 
**restart** | [**RestartConfig**](RestartConfig.md) | Configuration related to restarting the job. | [optional] 
**rollout** | [**RolloutConfig**](RolloutConfig.md) | Configuration related to rolling updates of the job. | [optional] 
**soft_scheduling_tags** | **Hash&lt;String, BOOLEAN&gt;** | List of soft scheduling tags. See [Soft Tags](http://enterprise-docs.apcera.com/other/job-scheduling/#soft-tags) for more information. | [optional] 
**state** | **String** | General state of this Job in the system. | [optional] 
**tags** | **Hash&lt;String, String&gt;** | Map of tags (arbitrary strings) to values. | [optional] 
**updated_at** | **DateTime** | Time at which the job was most recently updated. | [optional] 
**updated_by** | **String** | The principal name of the last user to update the job. | [optional] 
**uuid** | **String** | The job&#39;s unique identifier. | [optional] 
**version_id** | **Integer** | An auto-incremented number that indicates the revision of the object. | [optional] 
**weight** | **Integer** | A job&#39;s weight is used to route requests to this job relative to other job that have the same routes. See [Sharing Routes and Route Weights](http://docs.apcera.com/jobs/routes/#about-route-weights). | [optional] 


