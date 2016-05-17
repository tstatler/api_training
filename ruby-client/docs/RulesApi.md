# SwaggerClient::RulesApi

All URIs are relative to *https://api.kiso.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**rules_get**](RulesApi.md#rules_get) | **GET** /rules | Lists all policy rules.
[**rules_post**](RulesApi.md#rules_post) | **POST** /rules | Creates a new semantic pipeline rule for governing a given provider&#39;s behavior.
[**rules_uuid_delete**](RulesApi.md#rules_uuid_delete) | **DELETE** /rules/{uuid} | Deletes a policy event rule.
[**rules_uuid_get**](RulesApi.md#rules_uuid_get) | **GET** /rules/{uuid} | Returns information about a rule that that controls the behavior of semantic pipelines.


# **rules_get**
> rules_get(opts)

Lists all policy rules.

### Example
```ruby
# load the gem
require 'swagger_client'

api_instance = SwaggerClient::RulesApi.new

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Lists all policy rules.
  api_instance.rules_get(opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RulesApi->rules_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **rules_post**
> rules_post(rule, opts)

Creates a new semantic pipeline rule for governing a given provider's behavior.

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

api_instance = SwaggerClient::RulesApi.new

rule = SwaggerClient::SemiPipeRule.new # SemiPipeRule | An object that defines the properties of the new rule.

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Creates a new semantic pipeline rule for governing a given provider's behavior.
  api_instance.rules_post(rule, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RulesApi->rules_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rule** | [**SemiPipeRule**](SemiPipeRule.md)| An object that defines the properties of the new rule. | 
 **authorization** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **rules_uuid_delete**
> rules_uuid_delete(uuid, opts)

Deletes a policy event rule.

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

api_instance = SwaggerClient::RulesApi.new

uuid = "uuid_example" # String | UUID of the rule.

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Deletes a policy event rule.
  api_instance.rules_uuid_delete(uuid, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RulesApi->rules_uuid_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUID of the rule. | 
 **authorization** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **rules_uuid_get**
> Rule rules_uuid_get(uuid, opts)

Returns information about a rule that that controls the behavior of semantic pipelines.

Returns information about a rule that that controls the behavior of semantic pipelines.

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

api_instance = SwaggerClient::RulesApi.new

uuid = "uuid_example" # String | UUID of the rule.

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Returns information about a rule that that controls the behavior of semantic pipelines.
  result = api_instance.rules_uuid_get(uuid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling RulesApi->rules_uuid_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUID of the rule. | 
 **authorization** | **String**|  | [optional] 

### Return type

[**Rule**](Rule.md)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



