# SwaggerClient::ProvidersApi

All URIs are relative to *https://api.kiso.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**providers_get**](ProvidersApi.md#providers_get) | **GET** /providers | Returns a list of providers defined on the cluster.
[**providers_post**](ProvidersApi.md#providers_post) | **POST** /providers | Creates a new provider.
[**providers_uuid_delete**](ProvidersApi.md#providers_uuid_delete) | **DELETE** /providers/{uuid} | Deletes the specified provider.


# **providers_get**
> Array&lt;Provider&gt; providers_get(opts)

Returns a list of providers defined on the cluster.

Returns a list of providers defined on the cluster.

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

api_instance = SwaggerClient::ProvidersApi.new

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Returns a list of providers defined on the cluster.
  result = api_instance.providers_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProvidersApi->providers_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | [optional] 

### Return type

[**Array&lt;Provider&gt;**](Provider.md)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **providers_post**
> Array&lt;Provider&gt; providers_post(job, opts)

Creates a new provider.

Creates a new provider.

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

api_instance = SwaggerClient::ProvidersApi.new

job = SwaggerClient::Provider.new # Provider | An object that defines the properties of the new provider.

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Creates a new provider.
  result = api_instance.providers_post(job, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProvidersApi->providers_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job** | [**Provider**](Provider.md)| An object that defines the properties of the new provider. | 
 **authorization** | **String**|  | [optional] 

### Return type

[**Array&lt;Provider&gt;**](Provider.md)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **providers_uuid_delete**
> providers_uuid_delete(uuid, opts)

Deletes the specified provider.

Deletes the specified provider.

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

api_instance = SwaggerClient::ProvidersApi.new

uuid = "uuid_example" # String | UUID of the provider to delete.

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Deletes the specified provider.
  api_instance.providers_uuid_delete(uuid, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling ProvidersApi->providers_uuid_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUID of the provider to delete. | 
 **authorization** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



