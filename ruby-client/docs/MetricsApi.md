# SwaggerClient::MetricsApi

All URIs are relative to *https://api.kiso.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**metrics_cluster_get**](MetricsApi.md#metrics_cluster_get) | **GET** /metrics/cluster | Returns metrics data for the cluster.
[**metrics_instance_managers_get**](MetricsApi.md#metrics_instance_managers_get) | **GET** /metrics/instance_managers | Returns metrics for instance managers.
[**metrics_jobs_get**](MetricsApi.md#metrics_jobs_get) | **GET** /metrics/jobs | Returns job metrics.
[**metrics_route_counters_get**](MetricsApi.md#metrics_route_counters_get) | **GET** /metrics/route/counters | Returns metrics for counters on the route.
[**metrics_route_timers_get**](MetricsApi.md#metrics_route_timers_get) | **GET** /metrics/route/timers | Returns metrics for timers on the route.


# **metrics_cluster_get**
> Metrics metrics_cluster_get(opts)

Returns metrics data for the cluster.

Returns metrics data for the cluster.

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

api_instance = SwaggerClient::MetricsApi.new

opts = { 
  metric: ["metric_example"], # Array<String> | Comma-delimited string that includes, in order, the following fields: \n * Job FQN (wildcards accepted) \n * Instance manager hostname (can be a wildcard)\n * Instance ID \n * Metric to evaluate \n * 'From' time (optional)\n * 'To' time (optional).
  authorization: "authorization_example" # String | 
}

begin
  #Returns metrics data for the cluster.
  result = api_instance.metrics_cluster_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MetricsApi->metrics_cluster_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric** | [**Array&lt;String&gt;**](String.md)| Comma-delimited string that includes, in order, the following fields: \n * Job FQN (wildcards accepted) \n * Instance manager hostname (can be a wildcard)\n * Instance ID \n * Metric to evaluate \n * &#39;From&#39; time (optional)\n * &#39;To&#39; time (optional). | [optional] 
 **authorization** | **String**|  | [optional] 

### Return type

[**Metrics**](Metrics.md)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **metrics_instance_managers_get**
> Metrics metrics_instance_managers_get(opts)

Returns metrics for instance managers.

Returns metrics for instance managers.

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

api_instance = SwaggerClient::MetricsApi.new

opts = { 
  metric: ["metric_example"], # Array<String> | 
  authorization: "authorization_example" # String | 
}

begin
  #Returns metrics for instance managers.
  result = api_instance.metrics_instance_managers_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MetricsApi->metrics_instance_managers_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **authorization** | **String**|  | [optional] 

### Return type

[**Metrics**](Metrics.md)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **metrics_jobs_get**
> Metrics metrics_jobs_get(opts)

Returns job metrics.

Returns job metrics.

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

api_instance = SwaggerClient::MetricsApi.new

opts = { 
  metric: ["metric_example"], # Array<String> | Comma-delimited string that includes, in order, the following fields: \n * Job FQN (wildcards accepted) \n * Instance manager hostname (can be a wildcard)\n * Instance ID \n * Metric to evaluate \n * 'From' time (optional)\n * 'To' time (optional).
  authorization: "authorization_example" # String | 
}

begin
  #Returns job metrics.
  result = api_instance.metrics_jobs_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MetricsApi->metrics_jobs_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric** | [**Array&lt;String&gt;**](String.md)| Comma-delimited string that includes, in order, the following fields: \n * Job FQN (wildcards accepted) \n * Instance manager hostname (can be a wildcard)\n * Instance ID \n * Metric to evaluate \n * &#39;From&#39; time (optional)\n * &#39;To&#39; time (optional). | [optional] 
 **authorization** | **String**|  | [optional] 

### Return type

[**Metrics**](Metrics.md)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **metrics_route_counters_get**
> Metrics metrics_route_counters_get(opts)

Returns metrics for counters on the route.

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

api_instance = SwaggerClient::MetricsApi.new

opts = { 
  metric: ["metric_example"], # Array<String> | 
  authorization: "authorization_example" # String | 
}

begin
  #Returns metrics for counters on the route.
  result = api_instance.metrics_route_counters_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MetricsApi->metrics_route_counters_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **authorization** | **String**|  | [optional] 

### Return type

[**Metrics**](Metrics.md)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **metrics_route_timers_get**
> Metrics metrics_route_timers_get(opts)

Returns metrics for timers on the route.

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

api_instance = SwaggerClient::MetricsApi.new

opts = { 
  metric: ["metric_example"], # Array<String> | 
  authorization: "authorization_example" # String | 
}

begin
  #Returns metrics for timers on the route.
  result = api_instance.metrics_route_timers_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling MetricsApi->metrics_route_timers_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metric** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **authorization** | **String**|  | [optional] 

### Return type

[**Metrics**](Metrics.md)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



