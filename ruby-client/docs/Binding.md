# SwaggerClient::Binding

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**env_var** | **Array&lt;String&gt;** | List of environment variables generated for the binding. | [optional] 
**fqn** | **String** | The binding&#39;s fully-qualified name. | [optional] 
**job_fqn** | **String** | Fully-qualified name of the job that is bound to another job or service. | [optional] 
**name** | **String** | The base name of the binding. | [optional] 
**parameters** | **Hash&lt;String, String&gt;** | A map of custom binding parameter names to their values. | [optional] 
**provider_fqn** | **String** | Fully-qualified name of the provider used to create the service to which the source job is bound. Only relevant for job-to-service bindings. | [optional] 
**service_fqn** | **String** | Fully-qualified name of a the service to which the source job is bound. Only relevant for for job-to-service bindings. | [optional] 
**target_job_bound_ip** | **String** | IP address where the connection to the target job should be exposed. | [optional] 
**target_job_bound_port** | **String** | Port that the target job should be exposed at. | [optional] 
**target_job_fqn** | **String** | Fully-qualified name of the job to which the source job wants to bind (input only). | [optional] 
**target_job_port** | **String** | Port on the target job that the source job wants to bind to. | [optional] 
**target_job_uuid** | **String** | UUID of the job to which the source job is bound (output only). | [optional] 
**uuid** | **String** | The binding&#39;s unique identifier. | [optional] 


