# SwaggerClient::DefaultApi

All URIs are relative to *https://api.kiso.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**audit_get**](DefaultApi.md#audit_get) | **GET** /audit | Returns audit log items for the cluster.


# **audit_get**
> Array&lt;AuditLogItem&gt; audit_get(opts)

Returns audit log items for the cluster.

Returns a list audit log items. You can optionally filter the list by start time, end time, FQN, or event type.

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

api_instance = SwaggerClient::DefaultApi.new

opts = { 
  start_time: 3.4, # Float | UNIX timestamp. If specified, only events that occurred on or after the specified time are returned in the response.
  end_time: 3.4, # Float | UNIX timestamp. If specified, only events that occurred on or before the specified time are returned in the response.
  fqn: "fqn_example", # String | If specified, only events on the resource specified by `fqn` are returned in the response. You can also specify an FQN segment, which may include wildcards for the resource type. For example:\n * `*::/` returns all audit logs for all resource types.\n * `job::/` returns all audit logs for Job resource types. \n * `job::/apcera` returns all audit logs for Job resource types in the `/apcera` namespace and its sub-namespaces. \n * `*::/apcera` returns all audit logs for all resource types in the `/apcera` namespace its sub-namespaces.
  event_type: "event_type_example", # String | If specified, only events of the specified type are returned in the response.
  authorization: "authorization_example" # String | 
}

begin
  #Returns audit log items for the cluster.
  result = api_instance.audit_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling DefaultApi->audit_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **start_time** | **Float**| UNIX timestamp. If specified, only events that occurred on or after the specified time are returned in the response. | [optional] 
 **end_time** | **Float**| UNIX timestamp. If specified, only events that occurred on or before the specified time are returned in the response. | [optional] 
 **fqn** | **String**| If specified, only events on the resource specified by `fqn` are returned in the response. You can also specify an FQN segment, which may include wildcards for the resource type. For example:\n * `*::/` returns all audit logs for all resource types.\n * `job::/` returns all audit logs for Job resource types. \n * `job::/apcera` returns all audit logs for Job resource types in the `/apcera` namespace and its sub-namespaces. \n * `*::/apcera` returns all audit logs for all resource types in the `/apcera` namespace its sub-namespaces. | [optional] 
 **event_type** | **String**| If specified, only events of the specified type are returned in the response. | [optional] 
 **authorization** | **String**|  | [optional] 

### Return type

[**Array&lt;AuditLogItem&gt;**](AuditLogItem.md)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



