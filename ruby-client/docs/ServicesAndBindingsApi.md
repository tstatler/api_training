# SwaggerClient::ServicesAndBindingsApi

All URIs are relative to *https://api.kiso.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bindings_post**](ServicesAndBindingsApi.md#bindings_post) | **POST** /bindings | Creates a new binding between a job and a service, or between two jobs (a job link).
[**services_get**](ServicesAndBindingsApi.md#services_get) | **GET** /services | Lists available services.
[**services_post**](ServicesAndBindingsApi.md#services_post) | **POST** /services | Creates a new service.
[**services_uuid_delete**](ServicesAndBindingsApi.md#services_uuid_delete) | **DELETE** /services/{uuid} | Deletes the specified service.
[**unbind_post**](ServicesAndBindingsApi.md#unbind_post) | **POST** /unbind | Removes a service binding from a job.


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

api_instance = SwaggerClient::ServicesAndBindingsApi.new

binding = SwaggerClient::Binding.new # Binding | An object that defines the properties of the new binding.

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Creates a new binding between a job and a service, or between two jobs (a job link).
  result = api_instance.bindings_post(binding, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ServicesAndBindingsApi->bindings_post: #{e}"
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



# **services_get**
> Array&lt;Service&gt; services_get(opts)

Lists available services.

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

api_instance = SwaggerClient::ServicesAndBindingsApi.new

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Lists available services.
  result = api_instance.services_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ServicesAndBindingsApi->services_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | [optional] 

### Return type

[**Array&lt;Service&gt;**](Service.md)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **services_post**
> Service services_post(opts)

Creates a new service.

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

api_instance = SwaggerClient::ServicesAndBindingsApi.new

opts = { 
  authorization: "authorization_example" # String | 
  service_request: SwaggerClient::ServiceRequestObject.new # ServiceRequestObject | Describes the service to create.
}

begin
  #Creates a new service.
  result = api_instance.services_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ServicesAndBindingsApi->services_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | [optional] 
 **service_request** | [**ServiceRequestObject**](ServiceRequestObject.md)| Describes the service to create. | [optional] 

### Return type

[**Service**](Service.md)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **services_uuid_delete**
> services_uuid_delete(uuid, opts)

Deletes the specified service.

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

api_instance = SwaggerClient::ServicesAndBindingsApi.new

uuid = "uuid_example" # String | UUID of the service.

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Deletes the specified service.
  api_instance.services_uuid_delete(uuid, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ServicesAndBindingsApi->services_uuid_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUID of the service. | 
 **authorization** | **String**|  | [optional] 

### Return type

nil (empty response body)

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

api_instance = SwaggerClient::ServicesAndBindingsApi.new

job = SwaggerClient::UnbindParameterObject.new # UnbindParameterObject | An object that specifies the job and service to unbind.

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Removes a service binding from a job.
  api_instance.unbind_post(job, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ServicesAndBindingsApi->unbind_post: #{e}"
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



