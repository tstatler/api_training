# SwaggerClient::JobsApi

All URIs are relative to *https://api.kiso.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bindings_post**](JobsApi.md#bindings_post) | **POST** /bindings | Creates a new binding between a job and a service, or between two jobs (a job link).
[**docker_job_check**](JobsApi.md#docker_job_check) | **POST** /jobs/docker-job-check | Checks a Docker job before creation to see if it will be allowed by docker.allow policy.
[**docker_jobs_post**](JobsApi.md#docker_jobs_post) | **POST** /jobs/docker | Creates a new job from a Docker image.
[**jobs_get**](JobsApi.md#jobs_get) | **GET** /jobs | List jobs.
[**jobs_health_get**](JobsApi.md#jobs_health_get) | **GET** /jobs/health | Retrieves health information for a job with a specific UUID.
[**jobs_post**](JobsApi.md#jobs_post) | **POST** /jobs | Creates a new job.
[**jobs_routes_endpoint_get**](JobsApi.md#jobs_routes_endpoint_get) | **GET** /jobs/routes/{endpoint} | Returns a map of the specified endpoint to an array of job UUIDs that are assigned to the endpoint.
[**jobs_routes_get**](JobsApi.md#jobs_routes_get) | **GET** /jobs/routes | Returns a list of all route endpoints that each map to an array of job UUIDs assigned to the endpoint.
[**jobs_uuid_compliance_get**](JobsApi.md#jobs_uuid_compliance_get) | **GET** /jobs/{uuid}/compliance | Checks the specified job for policy compliance.
[**jobs_uuid_delete**](JobsApi.md#jobs_uuid_delete) | **DELETE** /jobs/{uuid} | Deletes the specified job.
[**jobs_uuid_files_path_get**](JobsApi.md#jobs_uuid_files_path_get) | **GET** /jobs/{uuid}/files/{path} | Returns information about an instance&#39;s underlying file system.
[**jobs_uuid_get**](JobsApi.md#jobs_uuid_get) | **GET** /jobs/{uuid} | Returns details about the specified job.
[**jobs_uuid_instances_get**](JobsApi.md#jobs_uuid_instances_get) | **GET** /jobs/{uuid}/instances | Returns instances from the health manager for a given job UUID.
[**jobs_uuid_instances_instance_uuid_delete**](JobsApi.md#jobs_uuid_instances_instance_uuid_delete) | **DELETE** /jobs/{uuid}/instances/{instance_uuid} | Stop a given instance of a job.
[**jobs_uuid_logs_drains_drain_uuid_delete**](JobsApi.md#jobs_uuid_logs_drains_drain_uuid_delete) | **DELETE** /jobs/{uuid}/logs/drains/{drain_uuid} | Deletes a log drain from a job.
[**jobs_uuid_logs_drains_get**](JobsApi.md#jobs_uuid_logs_drains_get) | **GET** /jobs/{uuid}/logs/drains | Returns all log drains for the specified job.
[**jobs_uuid_logs_drains_post**](JobsApi.md#jobs_uuid_logs_drains_post) | **POST** /jobs/{uuid}/logs/drains | Creates a log drain on the specified job.
[**jobs_uuid_logs_get**](JobsApi.md#jobs_uuid_logs_get) | **GET** /jobs/{uuid}/logs | Returns logs for the specified job.
[**jobs_uuid_put**](JobsApi.md#jobs_uuid_put) | **PUT** /jobs/{uuid} | Updates a job.
[**jobs_uuid_tunnel_get**](JobsApi.md#jobs_uuid_tunnel_get) | **GET** /jobs/{uuid}/tunnel | Creates a bi-directional tunnel with the job/instance UUID specified.
[**jobs_uuid_tunnel_instance_id_get**](JobsApi.md#jobs_uuid_tunnel_instance_id_get) | **GET** /jobs/{uuid}/tunnel/{instance_id} | Creates a bi-directional tunnel with the job/instance UUID specified.
[**tasks_uuid_get**](JobsApi.md#tasks_uuid_get) | **GET** /tasks/{uuid} | Returns a list of task events for a given task.
[**unbind_post**](JobsApi.md#unbind_post) | **POST** /unbind | Removes a service binding from a job.
[**unlink_post**](JobsApi.md#unlink_post) | **POST** /unlink | Removes a link between two jobs.


# **bindings_post**
> Binding bindings_post(binding, opts)

Creates a new binding between a job and a service, or between two jobs (a job link).

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization 
SwaggerClient.configure do |config|
  # Configure API key authorization: authorization
  config.api_key['authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['authorization'] = 'BEARER'
end

api_instance = SwaggerClient::JobsApi.new

binding = SwaggerClient::Binding.new # Binding | An object that defines the properties of the new binding.

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Creates a new binding between a job and a service, or between two jobs (a job link).
  result = api_instance.bindings_post(binding, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling JobsApi->bindings_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **binding** | [**Binding**](Binding.md)| An object that defines the properties of the new binding. | 
 **authorization** | **String**|  | [optional] 

### Return type

[**Binding**](Binding.md)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **docker_job_check**
> docker_job_check(job, opts)

Checks a Docker job before creation to see if it will be allowed by docker.allow policy.

Checks a Docker job before creation to see if it will be allowed by [docker.allow policy](http://docs.apcera.com/policy/examples/docker/#docker-image-whitelisting).

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization 
SwaggerClient.configure do |config|
  # Configure API key authorization: authorization
  config.api_key['authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['authorization'] = 'BEARER'
end

api_instance = SwaggerClient::JobsApi.new

job = SwaggerClient::Job.new # Job | The job object to check.

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Checks a Docker job before creation to see if it will be allowed by docker.allow policy.
  api_instance.docker_job_check(job, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling JobsApi->docker_job_check: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job** | [**Job**](Job.md)| The job object to check. | 
 **authorization** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **docker_jobs_post**
> CreateDockerJobResponse docker_jobs_post(job, opts)

Creates a new job from a Docker image.

Downloads a Docker image from a registry and creates a job to run it.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization 
SwaggerClient.configure do |config|
  # Configure API key authorization: authorization
  config.api_key['authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['authorization'] = 'BEARER'
end

api_instance = SwaggerClient::JobsApi.new

job = SwaggerClient::CreateDockerJobRequest.new # CreateDockerJobRequest | Docker job object.

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Creates a new job from a Docker image.
  result = api_instance.docker_jobs_post(job, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling JobsApi->docker_jobs_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job** | [**CreateDockerJobRequest**](CreateDockerJobRequest.md)| Docker job object. | 
 **authorization** | **String**|  | [optional] 

### Return type

[**CreateDockerJobResponse**](CreateDockerJobResponse.md)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **jobs_get**
> Array&lt;Job&gt; jobs_get(opts)

List jobs.

Returns a list of jobs, optionally filtered by one or more query parameters.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization 
SwaggerClient.configure do |config|
  # Configure API key authorization: authorization
  config.api_key['authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['authorization'] = 'BEARER'
end

api_instance = SwaggerClient::JobsApi.new

opts = { 
  authorization: "authorization_example" # String | 
  tag: ["tag_example"], # Array<String> | List of tags. Only jobs with the specified tags are returned.
  ids: ["ids_example"], # Array<String> | List of job UUIDs. Only jobs with the specified UUIDs are returned.
  name: "name_example", # String | Local name of job(s) to return.
  fqn: "fqn_example", # String | FQN of job to return.
  match_partial_fqn: "match_partial_fqn_example", # String | If `true`, jobs that partially match the specified FQN are returned.
  package_id: "package_id_example", # String | Return jobs that use the package specified by UUID.
  binding_fqn: "binding_fqn_example", # String | Filter jobs with a specific binding FQN.
  provider_fqn: "provider_fqn_example", # String | Return jobs bound to services on the specified provider.
  service_fqn: "service_fqn_example", # String | Return jobs bound to the specified service.
  count: "count_example", # String | Limits the number of jobs returned in the response. By default, all jobs are returned.
  page: "page_example", # String | Specifies the number of the results page to fetch. By default, the first page of results is returned.
  health: "health_example" # String | If `true`, the response includes health metrics for the job.
}

begin
  #List jobs.
  result = api_instance.jobs_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling JobsApi->jobs_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | [optional] 
 **tag** | [**Array&lt;String&gt;**](String.md)| List of tags. Only jobs with the specified tags are returned. | [optional] 
 **ids** | [**Array&lt;String&gt;**](String.md)| List of job UUIDs. Only jobs with the specified UUIDs are returned. | [optional] 
 **name** | **String**| Local name of job(s) to return. | [optional] 
 **fqn** | **String**| FQN of job to return. | [optional] 
 **match_partial_fqn** | **String**| If `true`, jobs that partially match the specified FQN are returned. | [optional] 
 **package_id** | **String**| Return jobs that use the package specified by UUID. | [optional] 
 **binding_fqn** | **String**| Filter jobs with a specific binding FQN. | [optional] 
 **provider_fqn** | **String**| Return jobs bound to services on the specified provider. | [optional] 
 **service_fqn** | **String**| Return jobs bound to the specified service. | [optional] 
 **count** | **String**| Limits the number of jobs returned in the response. By default, all jobs are returned. | [optional] 
 **page** | **String**| Specifies the number of the results page to fetch. By default, the first page of results is returned. | [optional] 
 **health** | **String**| If `true`, the response includes health metrics for the job. | [optional] 

### Return type

[**Array&lt;Job&gt;**](Job.md)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **jobs_health_get**
> JobHealth jobs_health_get(ids, opts)

Retrieves health information for a job with a specific UUID.

If a job UUID is supplied that corresponds to a deleted or non-running job, or the user does not have 'permit read' on the job that they requested health for, the health score will not be in the result.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization 
SwaggerClient.configure do |config|
  # Configure API key authorization: authorization
  config.api_key['authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['authorization'] = 'BEARER'
end

api_instance = SwaggerClient::JobsApi.new

ids = "ids_example" # String | List of job UUIDs separated by commas.

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Retrieves health information for a job with a specific UUID.
  result = api_instance.jobs_health_get(ids, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling JobsApi->jobs_health_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **String**| List of job UUIDs separated by commas. | 
 **authorization** | **String**|  | [optional] 

### Return type

[**JobHealth**](JobHealth.md)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **jobs_post**
> Job jobs_post(job, opts)

Creates a new job.

Creates a new job from the Job object passed in the POST body. The only required property in the request object is `fqn` ([Fully Qualified Name](http://docs.apcera.com/reference/glossary/#fqn)).

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization 
SwaggerClient.configure do |config|
  # Configure API key authorization: authorization
  config.api_key['authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['authorization'] = 'BEARER'
end

api_instance = SwaggerClient::JobsApi.new

job = SwaggerClient::Job.new # Job | An object that defines the properties of the new job. The only required parameter is `fqn`.

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Creates a new job.
  result = api_instance.jobs_post(job, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling JobsApi->jobs_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job** | [**Job**](Job.md)| An object that defines the properties of the new job. The only required parameter is `fqn`. | 
 **authorization** | **String**|  | [optional] 

### Return type

[**Job**](Job.md)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **jobs_routes_endpoint_get**
> Hash&lt;String, Array&lt;String&gt;&gt; jobs_routes_endpoint_get(endpoint, opts)

Returns a map of the specified endpoint to an array of job UUIDs that are assigned to the endpoint.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization 
SwaggerClient.configure do |config|
  # Configure API key authorization: authorization
  config.api_key['authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['authorization'] = 'BEARER'
end

api_instance = SwaggerClient::JobsApi.new

endpoint = "endpoint_example" # String | Base64-encoded endpoint URL.

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Returns a map of the specified endpoint to an array of job UUIDs that are assigned to the endpoint.
  result = api_instance.jobs_routes_endpoint_get(endpoint, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling JobsApi->jobs_routes_endpoint_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **endpoint** | **String**| Base64-encoded endpoint URL. | 
 **authorization** | **String**|  | [optional] 

### Return type

**Hash&lt;String, Array&lt;String&gt;&gt;**

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **jobs_routes_get**
> Hash&lt;String, Array&lt;String&gt;&gt; jobs_routes_get(opts)

Returns a list of all route endpoints that each map to an array of job UUIDs assigned to the endpoint.

Returns a list of job routes.  

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization 
SwaggerClient.configure do |config|
  # Configure API key authorization: authorization
  config.api_key['authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['authorization'] = 'BEARER'
end

api_instance = SwaggerClient::JobsApi.new

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Returns a list of all route endpoints that each map to an array of job UUIDs assigned to the endpoint.
  result = api_instance.jobs_routes_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling JobsApi->jobs_routes_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | [optional] 

### Return type

**Hash&lt;String, Array&lt;String&gt;&gt;**

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **jobs_uuid_compliance_get**
> jobs_uuid_compliance_get(uuid, opts)

Checks the specified job for policy compliance.

Checks the specified job for policy compliance. It checks job routes, bindings, resources, etc. for any violations according to current policy.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization 
SwaggerClient.configure do |config|
  # Configure API key authorization: authorization
  config.api_key['authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['authorization'] = 'BEARER'
end

api_instance = SwaggerClient::JobsApi.new

uuid = "uuid_example" # String | UUID of the job to check for compliance.

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Checks the specified job for policy compliance.
  api_instance.jobs_uuid_compliance_get(uuid, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling JobsApi->jobs_uuid_compliance_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUID of the job to check for compliance. | 
 **authorization** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **jobs_uuid_delete**
> jobs_uuid_delete(uuid, opts)

Deletes the specified job.

Deletes the specified job.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization 
SwaggerClient.configure do |config|
  # Configure API key authorization: authorization
  config.api_key['authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['authorization'] = 'BEARER'
end

api_instance = SwaggerClient::JobsApi.new

uuid = "uuid_example" # String | UUID of the job to delete.

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Deletes the specified job.
  api_instance.jobs_uuid_delete(uuid, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling JobsApi->jobs_uuid_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUID of the job to delete. | 
 **authorization** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **jobs_uuid_files_path_get**
> Array&lt;FileListing&gt; jobs_uuid_files_path_get(uuid, path, opts)

Returns information about an instance's underlying file system.

Returns information about an instance's underlying file system.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization 
SwaggerClient.configure do |config|
  # Configure API key authorization: authorization
  config.api_key['authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['authorization'] = 'BEARER'
end

api_instance = SwaggerClient::JobsApi.new

uuid = "uuid_example" # String | UUID of the job whose file system information should be retrieved.

path = "path_example" # String | The path to the root folder for which to generate the folder/file listing. For example, `/jobs/<uuid>/files/` returns a listing for the instance's root folder, and `/jobs/<uuid>/files/app` returns a list of the instance's `/app` folder. 

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Returns information about an instance's underlying file system.
  result = api_instance.jobs_uuid_files_path_get(uuid, path, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling JobsApi->jobs_uuid_files_path_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUID of the job whose file system information should be retrieved. | 
 **path** | **String**| The path to the root folder for which to generate the folder/file listing. For example, `/jobs/&lt;uuid&gt;/files/` returns a listing for the instance&#39;s root folder, and `/jobs/&lt;uuid&gt;/files/app` returns a list of the instance&#39;s `/app` folder.  | 
 **authorization** | **String**|  | [optional] 

### Return type

[**Array&lt;FileListing&gt;**](FileListing.md)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **jobs_uuid_get**
> Job jobs_uuid_get(uuid, opts)

Returns details about the specified job.

Returns details about the specified job.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization 
SwaggerClient.configure do |config|
  # Configure API key authorization: authorization
  config.api_key['authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['authorization'] = 'BEARER'
end

api_instance = SwaggerClient::JobsApi.new

uuid = "uuid_example" # String | UUID of the job to fetch.

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Returns details about the specified job.
  result = api_instance.jobs_uuid_get(uuid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling JobsApi->jobs_uuid_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUID of the job to fetch. | 
 **authorization** | **String**|  | [optional] 

### Return type

[**Job**](Job.md)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **jobs_uuid_instances_get**
> jobs_uuid_instances_get(uuid, opts)

Returns instances from the health manager for a given job UUID.

Returns instances from the health manager for a given job UUID.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization 
SwaggerClient.configure do |config|
  # Configure API key authorization: authorization
  config.api_key['authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['authorization'] = 'BEARER'
end

api_instance = SwaggerClient::JobsApi.new

uuid = "uuid_example" # String | UUID of the job.

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Returns instances from the health manager for a given job UUID.
  api_instance.jobs_uuid_instances_get(uuid, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling JobsApi->jobs_uuid_instances_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUID of the job. | 
 **authorization** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **jobs_uuid_instances_instance_uuid_delete**
> jobs_uuid_instances_instance_uuid_delete(uuid, instance_uuid, opts)

Stop a given instance of a job.

Issues a stop request to the specified job instance.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization 
SwaggerClient.configure do |config|
  # Configure API key authorization: authorization
  config.api_key['authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['authorization'] = 'BEARER'
end

api_instance = SwaggerClient::JobsApi.new

uuid = "uuid_example" # String | UUID of the job.

instance_uuid = "instance_uuid_example" # String | UUID of the job instance to stop.

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Stop a given instance of a job.
  api_instance.jobs_uuid_instances_instance_uuid_delete(uuid, instance_uuid, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling JobsApi->jobs_uuid_instances_instance_uuid_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUID of the job. | 
 **instance_uuid** | **String**| UUID of the job instance to stop. | 
 **authorization** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **jobs_uuid_logs_drains_drain_uuid_delete**
> Drain jobs_uuid_logs_drains_drain_uuid_delete(uuid, drain_uuid, opts)

Deletes a log drain from a job.

Deletes the specified log drain from the specified job.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization 
SwaggerClient.configure do |config|
  # Configure API key authorization: authorization
  config.api_key['authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['authorization'] = 'BEARER'
end

api_instance = SwaggerClient::JobsApi.new

uuid = "uuid_example" # String | UUID of the job with the log drain to delete.

drain_uuid = "drain_uuid_example" # String | UUID of the log drain to delete.

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Deletes a log drain from a job.
  result = api_instance.jobs_uuid_logs_drains_drain_uuid_delete(uuid, drain_uuid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling JobsApi->jobs_uuid_logs_drains_drain_uuid_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUID of the job with the log drain to delete. | 
 **drain_uuid** | **String**| UUID of the log drain to delete. | 
 **authorization** | **String**|  | [optional] 

### Return type

[**Drain**](Drain.md)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **jobs_uuid_logs_drains_get**
> Drain jobs_uuid_logs_drains_get(uuid, opts)

Returns all log drains for the specified job.

Returns all configured log drains for the specified job.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization 
SwaggerClient.configure do |config|
  # Configure API key authorization: authorization
  config.api_key['authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['authorization'] = 'BEARER'
end

api_instance = SwaggerClient::JobsApi.new

uuid = "uuid_example" # String | UUID of the job to retrieve log drains for.

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Returns all log drains for the specified job.
  result = api_instance.jobs_uuid_logs_drains_get(uuid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling JobsApi->jobs_uuid_logs_drains_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUID of the job to retrieve log drains for. | 
 **authorization** | **String**|  | [optional] 

### Return type

[**Drain**](Drain.md)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **jobs_uuid_logs_drains_post**
> Drain jobs_uuid_logs_drains_post(uuid, opts)

Creates a log drain on the specified job.

Creates a log drain on the specified job from the `drain` parameter in the request body.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization 
SwaggerClient.configure do |config|
  # Configure API key authorization: authorization
  config.api_key['authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['authorization'] = 'BEARER'
end

api_instance = SwaggerClient::JobsApi.new

uuid = "uuid_example" # String | UUID of the job.

opts = { 
  drain: SwaggerClient::Drain.new, # Drain | Drain object to add to job.
  authorization: "authorization_example" # String | 
}

begin
  #Creates a log drain on the specified job.
  result = api_instance.jobs_uuid_logs_drains_post(uuid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling JobsApi->jobs_uuid_logs_drains_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUID of the job. | 
 **drain** | [**Drain**](Drain.md)| Drain object to add to job. | [optional] 
 **authorization** | **String**|  | [optional] 

### Return type

[**Drain**](Drain.md)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **jobs_uuid_logs_get**
> String jobs_uuid_logs_get(uuid, opts)

Returns logs for the specified job.

Returns logs for the specified job.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization 
SwaggerClient.configure do |config|
  # Configure API key authorization: authorization
  config.api_key['authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['authorization'] = 'BEARER'
end

api_instance = SwaggerClient::JobsApi.new

uuid = "uuid_example" # String | UUID of the job to retrieve logs for.

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Returns logs for the specified job.
  result = api_instance.jobs_uuid_logs_get(uuid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling JobsApi->jobs_uuid_logs_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUID of the job to retrieve logs for. | 
 **authorization** | **String**|  | [optional] 

### Return type

**String**

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **jobs_uuid_put**
> Job jobs_uuid_put(uuid, job, opts)

Updates a job.

Updates the specified job.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization 
SwaggerClient.configure do |config|
  # Configure API key authorization: authorization
  config.api_key['authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['authorization'] = 'BEARER'
end

api_instance = SwaggerClient::JobsApi.new

uuid = "uuid_example" # String | UUID of the job to update.

job = SwaggerClient::Job.new # Job | A JSON object describing the full job object to update, including new values for any properties to update on the job.

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Updates a job.
  result = api_instance.jobs_uuid_put(uuid, job, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling JobsApi->jobs_uuid_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUID of the job to update. | 
 **job** | [**Job**](Job.md)| A JSON object describing the full job object to update, including new values for any properties to update on the job. | 
 **authorization** | **String**|  | [optional] 

### Return type

[**Job**](Job.md)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **jobs_uuid_tunnel_get**
> jobs_uuid_tunnel_get(uuid, opts)

Creates a bi-directional tunnel with the job/instance UUID specified.

Creates a bi-directional tunnel with the job/instance UUID specified.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization 
SwaggerClient.configure do |config|
  # Configure API key authorization: authorization
  config.api_key['authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['authorization'] = 'BEARER'
end

api_instance = SwaggerClient::JobsApi.new

uuid = "uuid_example" # String | UUID of the job.

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Creates a bi-directional tunnel with the job/instance UUID specified.
  api_instance.jobs_uuid_tunnel_get(uuid, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling JobsApi->jobs_uuid_tunnel_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUID of the job. | 
 **authorization** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **jobs_uuid_tunnel_instance_id_get**
> jobs_uuid_tunnel_instance_id_get(uuid, instance_id, opts)

Creates a bi-directional tunnel with the job/instance UUID specified.

Creates a bi-directional tunnel with the job/instance UUID specified.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization 
SwaggerClient.configure do |config|
  # Configure API key authorization: authorization
  config.api_key['authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['authorization'] = 'BEARER'
end

api_instance = SwaggerClient::JobsApi.new

uuid = "uuid_example" # String | UUID of the job.

instance_id = "instance_id_example" # String | UUID of the job instance.

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Creates a bi-directional tunnel with the job/instance UUID specified.
  api_instance.jobs_uuid_tunnel_instance_id_get(uuid, instance_id, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling JobsApi->jobs_uuid_tunnel_instance_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUID of the job. | 
 **instance_id** | **String**| UUID of the job instance. | 
 **authorization** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **tasks_uuid_get**
> Task tasks_uuid_get(uuid, opts)

Returns a list of task events for a given task.

Returns the requested Task, which contains a list of task events. A client can poll this endpoint to check the status of a task. Optionally, a client can request a websocket connection over which tasks are streamed in real-time.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization 
SwaggerClient.configure do |config|
  # Configure API key authorization: authorization
  config.api_key['authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['authorization'] = 'BEARER'
end

api_instance = SwaggerClient::JobsApi.new

uuid = "uuid_example" # String | UUID of task.

opts = { 
  authorization: "authorization_example" # String | 
  time: "time_example", # String | If specified, only task events that occurred after the specified time are returned. If not specified, all task events are returned.
  upgrade: "websocket", # String | Header required to upgrade connection to websocket. Value must be 'websocket'.
  connection: "upgrade", # String | Header required to upgrade connection to websocket. Value must be 'Upgrade'.
  sec_web_socket_key: "sec_web_socket_key_example" # String | Header required to upgrade connection to websocket. Value is base64-encoded random bytes.
}

begin
  #Returns a list of task events for a given task.
  result = api_instance.tasks_uuid_get(uuid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling JobsApi->tasks_uuid_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUID of task. | 
 **authorization** | **String**|  | [optional] 
 **time** | **String**| If specified, only task events that occurred after the specified time are returned. If not specified, all task events are returned. | [optional] 
 **upgrade** | **String**| Header required to upgrade connection to websocket. Value must be &#39;websocket&#39;. | [optional] [default to websocket]
 **connection** | **String**| Header required to upgrade connection to websocket. Value must be &#39;Upgrade&#39;. | [optional] [default to upgrade]
 **sec_web_socket_key** | **String**| Header required to upgrade connection to websocket. Value is base64-encoded random bytes. | [optional] 

### Return type

[**Task**](Task.md)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **unbind_post**
> unbind_post(job, opts)

Removes a service binding from a job.

Removes a service binding from a job.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization 
SwaggerClient.configure do |config|
  # Configure API key authorization: authorization
  config.api_key['authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['authorization'] = 'BEARER'
end

api_instance = SwaggerClient::JobsApi.new

job = SwaggerClient::UnbindParameterObject.new # UnbindParameterObject | An object that specifies the job and service to unbind.

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Removes a service binding from a job.
  api_instance.unbind_post(job, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling JobsApi->unbind_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job** | [**UnbindParameterObject**](UnbindParameterObject.md)| An object that specifies the job and service to unbind. | 
 **authorization** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **unlink_post**
> unlink_post(job, opts)

Removes a link between two jobs.

Removes a link between two jobs. The binding record is only removed from the `from_job` property of the request object.

### Example
```ruby
# load the gem
require 'swagger_client'
# setup authorization 
SwaggerClient.configure do |config|
  # Configure API key authorization: authorization
  config.api_key['authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'BEARER' (defaults to nil)
  #config.api_key_prefix['authorization'] = 'BEARER'
end

api_instance = SwaggerClient::JobsApi.new

job = SwaggerClient::UnlinkParameterObject.new # UnlinkParameterObject | An object that specifies the two jobs to link and the port to use on the target job.

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Removes a link between two jobs.
  api_instance.unlink_post(job, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling JobsApi->unlink_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job** | [**UnlinkParameterObject**](UnlinkParameterObject.md)| An object that specifies the two jobs to link and the port to use on the target job. | 
 **authorization** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



