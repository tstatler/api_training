# SwaggerClient::InstancesApi

All URIs are relative to *https://api.kiso.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**instance_managers_get**](InstancesApi.md#instance_managers_get) | **GET** /instance_managers | Returns a list of instance managers.
[**instance_managers_uuid_get**](InstancesApi.md#instance_managers_uuid_get) | **GET** /instance_managers/{uuid} | Returns details for the specified instance manager.
[**instance_managers_uuid_instances_get**](InstancesApi.md#instance_managers_uuid_instances_get) | **GET** /instance_managers/{uuid}/instances | Returns a list of instances managed by the specified instance manager.
[**instances_uuid_snapshot_post**](InstancesApi.md#instances_uuid_snapshot_post) | **POST** /instances/{uuid}/snapshot | Creates a snapshot of a capsule.
[**tags_get**](InstancesApi.md#tags_get) | **GET** /tags | Lists all tags on all instance managers in the cluster. 


# **instance_managers_get**
> Array&lt;InstanceManager&gt; instance_managers_get(opts)

Returns a list of instance managers.

Returns a list of instance managers.

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

api_instance = SwaggerClient::InstancesApi.new

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Returns a list of instance managers.
  result = api_instance.instance_managers_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InstancesApi->instance_managers_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | [optional] 

### Return type

[**Array&lt;InstanceManager&gt;**](InstanceManager.md)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **instance_managers_uuid_get**
> InstanceManager instance_managers_uuid_get(uuid, opts)

Returns details for the specified instance manager.

Returns details for the specified instance manager.

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

api_instance = SwaggerClient::InstancesApi.new

uuid = "uuid_example" # String | UUID of the instance manager to retrieve details for.

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Returns details for the specified instance manager.
  result = api_instance.instance_managers_uuid_get(uuid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InstancesApi->instance_managers_uuid_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUID of the instance manager to retrieve details for. | 
 **authorization** | **String**|  | [optional] 

### Return type

[**InstanceManager**](InstanceManager.md)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **instance_managers_uuid_instances_get**
> Array&lt;Instances&gt; instance_managers_uuid_instances_get(uuid, opts)

Returns a list of instances managed by the specified instance manager.

Returns a list of instances managed by the specified instance manager.

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

api_instance = SwaggerClient::InstancesApi.new

uuid = "uuid_example" # String | UUID of the instance manager whose instances should be retrieved.

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Returns a list of instances managed by the specified instance manager.
  result = api_instance.instance_managers_uuid_instances_get(uuid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InstancesApi->instance_managers_uuid_instances_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUID of the instance manager whose instances should be retrieved. | 
 **authorization** | **String**|  | [optional] 

### Return type

[**Array&lt;Instances&gt;**](Instances.md)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **instances_uuid_snapshot_post**
> instances_uuid_snapshot_post(uuid, opts)

Creates a snapshot of a capsule.

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

api_instance = SwaggerClient::InstancesApi.new

uuid = "uuid_example" # String | UUID of the job from which to create the capsule.

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Creates a snapshot of a capsule.
  api_instance.instances_uuid_snapshot_post(uuid, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InstancesApi->instances_uuid_snapshot_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUID of the job from which to create the capsule. | 
 **authorization** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **tags_get**
> tags_get(opts)

Lists all tags on all instance managers in the cluster. 

Lists all tags on all instance managers in the cluster. Requires `read` privileges on the `cluster` realm.

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

api_instance = SwaggerClient::InstancesApi.new

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Lists all tags on all instance managers in the cluster. 
  api_instance.tags_get(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling InstancesApi->tags_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



