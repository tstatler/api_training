# SwaggerClient::LogsApi

All URIs are relative to *https://api.kiso.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**audit_logs_get**](LogsApi.md#audit_logs_get) | **GET** /audit_logs | Returns audit log items for the cluster.
[**logs_channel_get**](LogsApi.md#logs_channel_get) | **GET** /logs/{channel} | Streams logs for the specified channel.


# **audit_logs_get**
> Array&lt;AuditLogItemOld&gt; audit_logs_get(opts)

Returns audit log items for the cluster.

Returns a list of audit log items. 

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

api_instance = SwaggerClient::LogsApi.new

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Returns audit log items for the cluster.
  result = api_instance.audit_logs_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LogsApi->audit_logs_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | [optional] 

### Return type

[**Array&lt;AuditLogItemOld&gt;**](AuditLogItemOld.md)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **logs_channel_get**
> logs_channel_get(channel, opts)

Streams logs for the specified channel.

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

api_instance = SwaggerClient::LogsApi.new

channel = "channel_example" # String | TBD

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Streams logs for the specified channel.
  api_instance.logs_channel_get(channel, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling LogsApi->logs_channel_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **channel** | **String**| TBD | 
 **authorization** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



