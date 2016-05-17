# SwaggerClient::StagingPipelinesApi

All URIs are relative to *https://api.kiso.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**stagingpipelines_get**](StagingPipelinesApi.md#stagingpipelines_get) | **GET** /stagingpipelines | Lists all staging pipelines
[**stagingpipelines_post**](StagingPipelinesApi.md#stagingpipelines_post) | **POST** /stagingpipelines | Creates a new staging pipeline.
[**stagingpipelines_uuid_delete**](StagingPipelinesApi.md#stagingpipelines_uuid_delete) | **DELETE** /stagingpipelines/{uuid} | Deletes the specified staging pipeline.
[**stagingpipelines_uuid_get**](StagingPipelinesApi.md#stagingpipelines_uuid_get) | **GET** /stagingpipelines/{uuid} | Shows the specified staging pipeline.
[**stagingpipelines_uuid_put**](StagingPipelinesApi.md#stagingpipelines_uuid_put) | **PUT** /stagingpipelines/{uuid} | Updates the specified staging pipeline.


# **stagingpipelines_get**
> Array&lt;StagingPipeline&gt; stagingpipelines_get(opts)

Lists all staging pipelines

Lists all staging pipelines. To return a single staging pipeline specify its fully qualified name in the `fqn` query parameter.

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

api_instance = SwaggerClient::StagingPipelinesApi.new

opts = { 
  fqn: "fqn_example", # String | The fully qualified name the staging pipeline to retrieve.
  authorization: "authorization_example" # String | 
}

begin
  #Lists all staging pipelines
  result = api_instance.stagingpipelines_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StagingPipelinesApi->stagingpipelines_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fqn** | **String**| The fully qualified name the staging pipeline to retrieve. | [optional] 
 **authorization** | **String**|  | [optional] 

### Return type

[**Array&lt;StagingPipeline&gt;**](StagingPipeline.md)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **stagingpipelines_post**
> stagingpipelines_post(opts)

Creates a new staging pipeline.

Creates a new staging pipeline.

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

api_instance = SwaggerClient::StagingPipelinesApi.new

opts = { 
  staging_pipeline: SwaggerClient::StagingPipeline.new, # StagingPipeline | Staging pipeline object to create.
  authorization: "authorization_example" # String | 
}

begin
  #Creates a new staging pipeline.
  api_instance.stagingpipelines_post(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StagingPipelinesApi->stagingpipelines_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **staging_pipeline** | [**StagingPipeline**](StagingPipeline.md)| Staging pipeline object to create. | [optional] 
 **authorization** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **stagingpipelines_uuid_delete**
> stagingpipelines_uuid_delete(uuid, opts)

Deletes the specified staging pipeline.

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

api_instance = SwaggerClient::StagingPipelinesApi.new

uuid = "uuid_example" # String | UUID of the staging pipeline.

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Deletes the specified staging pipeline.
  api_instance.stagingpipelines_uuid_delete(uuid, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StagingPipelinesApi->stagingpipelines_uuid_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUID of the staging pipeline. | 
 **authorization** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **stagingpipelines_uuid_get**
> stagingpipelines_uuid_get(uuid, opts)

Shows the specified staging pipeline.

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

api_instance = SwaggerClient::StagingPipelinesApi.new

uuid = "uuid_example" # String | UUID of the staging pipeline.

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Shows the specified staging pipeline.
  api_instance.stagingpipelines_uuid_get(uuid, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StagingPipelinesApi->stagingpipelines_uuid_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUID of the staging pipeline. | 
 **authorization** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **stagingpipelines_uuid_put**
> stagingpipelines_uuid_put(uuid, opts)

Updates the specified staging pipeline.

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

api_instance = SwaggerClient::StagingPipelinesApi.new

uuid = "uuid_example" # String | UUID of the staging pipeline.

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Updates the specified staging pipeline.
  api_instance.stagingpipelines_uuid_put(uuid, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling StagingPipelinesApi->stagingpipelines_uuid_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUID of the staging pipeline. | 
 **authorization** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



