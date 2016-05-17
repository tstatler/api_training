# SwaggerClient::UtilitiesApi

All URIs are relative to *https://api.kiso.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apc_download_platform_get**](UtilitiesApi.md#apc_download_platform_get) | **GET** /apc/download/{platform} | Downloads the APC utility.
[**apc_version_get**](UtilitiesApi.md#apc_version_get) | **GET** /apc/version | Returns the version of APC available for download.
[**info_get**](UtilitiesApi.md#info_get) | **GET** /info | Returns information about the API server.
[**namespace_default_get**](UtilitiesApi.md#namespace_default_get) | **GET** /namespace/default | Returns the default namespace for the currently logged-in user.
[**runtimes_get**](UtilitiesApi.md#runtimes_get) | **GET** /runtimes | Lists supported workload runtimes.
[**version_get**](UtilitiesApi.md#version_get) | **GET** /version | Returns the version number of the API Server.


# **apc_download_platform_get**
> apc_download_platform_get(platform, opts)

Downloads the APC utility.

Downloads the APC command-line utility for the specified platform.

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

api_instance = SwaggerClient::UtilitiesApi.new

platform = "platform_example" # String | Target platform. Can be one of the following values: \n * `linux` \n * `osx` \n * `linux_amd64` \n * `osx_amd64` \n * `darwin_amd64` \n * `darwin`

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Downloads the APC utility.
  api_instance.apc_download_platform_get(platform, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UtilitiesApi->apc_download_platform_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **platform** | **String**| Target platform. Can be one of the following values: \n * `linux` \n * `osx` \n * `linux_amd64` \n * `osx_amd64` \n * `darwin_amd64` \n * `darwin` | 
 **authorization** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **apc_version_get**
> APCVersionObject apc_version_get(opts)

Returns the version of APC available for download.

Returns the version of APC available for download from the cluster.

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

api_instance = SwaggerClient::UtilitiesApi.new

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Returns the version of APC available for download.
  result = api_instance.apc_version_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UtilitiesApi->apc_version_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | [optional] 

### Return type

[**APCVersionObject**](APCVersionObject.md)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **info_get**
> Info info_get(opts)

Returns information about the API server.

Returns information about the API server.

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

api_instance = SwaggerClient::UtilitiesApi.new

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Returns information about the API server.
  result = api_instance.info_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UtilitiesApi->info_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | [optional] 

### Return type

[**Info**](Info.md)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **namespace_default_get**
> Namespace namespace_default_get(opts)

Returns the default namespace for the currently logged-in user.

Returns the default namespace for the currently logged-in user.

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

api_instance = SwaggerClient::UtilitiesApi.new

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Returns the default namespace for the currently logged-in user.
  result = api_instance.namespace_default_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UtilitiesApi->namespace_default_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | [optional] 

### Return type

[**Namespace**](Namespace.md)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **runtimes_get**
> Array&lt;Runtime&gt; runtimes_get(opts)

Lists supported workload runtimes.

Lists file names and patterns used by APC to determine the appropriate staging pipeline to stage a given workload.

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

api_instance = SwaggerClient::UtilitiesApi.new

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Lists supported workload runtimes.
  result = api_instance.runtimes_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UtilitiesApi->runtimes_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | [optional] 

### Return type

[**Array&lt;Runtime&gt;**](Runtime.md)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **version_get**
> InlineResponse200 version_get(opts)

Returns the version number of the API Server.

Returns the version number of the API Server.

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

api_instance = SwaggerClient::UtilitiesApi.new

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Returns the version number of the API Server.
  result = api_instance.version_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling UtilitiesApi->version_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



