# SwaggerClient::PackagesApi

All URIs are relative to *https://api.kiso.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**packages_dependencies_post**](PackagesApi.md#packages_dependencies_post) | **POST** /packages/dependencies | Returns a list of packages that fulfill the specified dependency type and name for the specified namespace.
[**packages_get**](PackagesApi.md#packages_get) | **GET** /packages | Returns a list of packages on the cluster.
[**packages_package_uuid_resources_resource_uuid_put**](PackagesApi.md#packages_package_uuid_resources_resource_uuid_put) | **PUT** /packages/{package_uuid}/resources/{resource_uuid} | Uploads a package resource for the specified package.
[**packages_post**](PackagesApi.md#packages_post) | **POST** /packages | Creates a new package.
[**packages_resources_uuid_get**](PackagesApi.md#packages_resources_uuid_get) | **GET** /packages/resources/{uuid} | Downloads the specified package&#39;s binary resource.
[**packages_resources_uuid_put**](PackagesApi.md#packages_resources_uuid_put) | **PUT** /packages/resources/{uuid} | Uploads package resources for the specified package.
[**packages_uuid_delete**](PackagesApi.md#packages_uuid_delete) | **DELETE** /packages/{uuid} | Deletes the specified package.
[**packages_uuid_get**](PackagesApi.md#packages_uuid_get) | **GET** /packages/{uuid} | Returns the specified package.
[**packages_uuid_put**](PackagesApi.md#packages_uuid_put) | **PUT** /packages/{uuid} | Updates the specified package&#39;s properties.


# **packages_dependencies_post**
> Array&lt;Package&gt; packages_dependencies_post(opts)

Returns a list of packages that fulfill the specified dependency type and name for the specified namespace.

Returns a list of packages that fulfill the specified dependency type and name for the specified namespace.

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

api_instance = SwaggerClient::PackagesApi.new

opts = { 
  targetjob_resource: SwaggerClient::PackageDependsRequest.new, # PackageDependsRequest | JSON object that identifies the namespace we're resolving dependencies within, and the package dependencies that need to be fully resolved.
  authorization: "authorization_example" # String | 
}

begin
  #Returns a list of packages that fulfill the specified dependency type and name for the specified namespace.
  result = api_instance.packages_dependencies_post(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PackagesApi->packages_dependencies_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **targetjob_resource** | [**PackageDependsRequest**](PackageDependsRequest.md)| JSON object that identifies the namespace we&#39;re resolving dependencies within, and the package dependencies that need to be fully resolved. | [optional] 
 **authorization** | **String**|  | [optional] 

### Return type

[**Array&lt;Package&gt;**](Package.md)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **packages_get**
> Array&lt;Package&gt; packages_get(opts)

Returns a list of packages on the cluster.

Returns a list of packages on the cluster, optionally filtered by package name, FQN, UUID or other properties. Pagination is also supported.

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

api_instance = SwaggerClient::PackagesApi.new

opts = { 
  tag: ["tag_example"], # Array<String> | List of tags. Only packages with the specified tags are returned.
  excluded_tags: ["excluded_tags_example"], # Array<String> | List of excluded tags. Only packages without the specified tags are returned.
  ids: ["ids_example"], # Array<String> | List of package UUIDs. Only packages with specifed UUIDs to return.
  name: "name_example", # String | Local name of package to return.
  fqn: "fqn_example", # String | FQN of package to return.
  match_partial_fqn: "match_partial_fqn_example", # String | If `true`, packages that partially match the FQN specified by `fqn` parameter are returned. If `false` (default) then `fqn` must exactly match an available package.
  package_id: "package_id_example", # String | UUID of the package to return.
  provides_type: "provides_type_example", # String | Type of packages to return. Valid values are `os`, `package`, `runtime`, or `file`. 
  provides_name: "provides_name_example", # String | Name that describes the packages to return. Value can be an exact package name ('java-1.6' or 'ubuntu-13.10', for example) or a generalized requirement ('linux', for example).
  authorization: "authorization_example" # String | 
}

begin
  #Returns a list of packages on the cluster.
  result = api_instance.packages_get(opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PackagesApi->packages_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tag** | [**Array&lt;String&gt;**](String.md)| List of tags. Only packages with the specified tags are returned. | [optional] 
 **excluded_tags** | [**Array&lt;String&gt;**](String.md)| List of excluded tags. Only packages without the specified tags are returned. | [optional] 
 **ids** | [**Array&lt;String&gt;**](String.md)| List of package UUIDs. Only packages with specifed UUIDs to return. | [optional] 
 **name** | **String**| Local name of package to return. | [optional] 
 **fqn** | **String**| FQN of package to return. | [optional] 
 **match_partial_fqn** | **String**| If `true`, packages that partially match the FQN specified by `fqn` parameter are returned. If `false` (default) then `fqn` must exactly match an available package. | [optional] 
 **package_id** | **String**| UUID of the package to return. | [optional] 
 **provides_type** | **String**| Type of packages to return. Valid values are `os`, `package`, `runtime`, or `file`.  | [optional] 
 **provides_name** | **String**| Name that describes the packages to return. Value can be an exact package name (&#39;java-1.6&#39; or &#39;ubuntu-13.10&#39;, for example) or a generalized requirement (&#39;linux&#39;, for example). | [optional] 
 **authorization** | **String**|  | [optional] 

### Return type

[**Array&lt;Package&gt;**](Package.md)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **packages_package_uuid_resources_resource_uuid_put**
> packages_package_uuid_resources_resource_uuid_put(package_uuid, resource_uuid, binary_data, content_digest, opts)

Uploads a package resource for the specified package.

Uploads a specific package resource to the specified package.

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

api_instance = SwaggerClient::PackagesApi.new

package_uuid = "package_uuid_example" # String | UUID of the package.

resource_uuid = "resource_uuid_example" # String | UUID of the resource.

binary_data = SwaggerClient::ByteArray.new # ByteArray | Binary package resource (GZIP). The resource's content length and SHA must match the values specified made in a previous call to [`POST /packages`](#operation--packages-post).

content_digest = "content_digest_example" # String | 

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Uploads a package resource for the specified package.
  api_instance.packages_package_uuid_resources_resource_uuid_put(package_uuid, resource_uuid, binary_data, content_digest, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PackagesApi->packages_package_uuid_resources_resource_uuid_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package_uuid** | **String**| UUID of the package. | 
 **resource_uuid** | **String**| UUID of the resource. | 
 **binary_data** | **ByteArray**| Binary package resource (GZIP). The resource&#39;s content length and SHA must match the values specified made in a previous call to [`POST /packages`](#operation--packages-post). | 
 **content_digest** | **String**|  | 
 **authorization** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json



# **packages_post**
> Package packages_post(pkg, opts)

Creates a new package.

Creates a new package from the provided JSON object.

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

api_instance = SwaggerClient::PackagesApi.new

pkg = SwaggerClient::Package.new # Package | An object that defines the properties of the new package.

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Creates a new package.
  result = api_instance.packages_post(pkg, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PackagesApi->packages_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pkg** | [**Package**](Package.md)| An object that defines the properties of the new package. | 
 **authorization** | **String**|  | [optional] 

### Return type

[**Package**](Package.md)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **packages_resources_uuid_get**
> packages_resources_uuid_get(uuid, opts)

Downloads the specified package's binary resource.

Downloads the specified package's binary resource.

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

api_instance = SwaggerClient::PackagesApi.new

uuid = "uuid_example" # String | UUID of the package.

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Downloads the specified package's binary resource.
  api_instance.packages_resources_uuid_get(uuid, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PackagesApi->packages_resources_uuid_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUID of the package. | 
 **authorization** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **packages_resources_uuid_put**
> packages_resources_uuid_put(uuid, binary_data, opts)

Uploads package resources for the specified package.

Uploads package resources for the specified package.

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

api_instance = SwaggerClient::PackagesApi.new

uuid = "uuid_example" # String | UUID of the package.

binary_data = SwaggerClient::ByteArray.new # ByteArray | Binary package resource (GZIP). The resource's content length and SHA must match the values specified made in a previous call to [`POST /packages`](#operation--packages-post).

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Uploads package resources for the specified package.
  api_instance.packages_resources_uuid_put(uuid, binary_data, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PackagesApi->packages_resources_uuid_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUID of the package. | 
 **binary_data** | **ByteArray**| Binary package resource (GZIP). The resource&#39;s content length and SHA must match the values specified made in a previous call to [`POST /packages`](#operation--packages-post). | 
 **authorization** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json



# **packages_uuid_delete**
> packages_uuid_delete(uuid, opts)

Deletes the specified package.

Deletes the specified package.

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

api_instance = SwaggerClient::PackagesApi.new

uuid = "uuid_example" # String | UUID of the package to delete.

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Deletes the specified package.
  api_instance.packages_uuid_delete(uuid, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PackagesApi->packages_uuid_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUID of the package to delete. | 
 **authorization** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **packages_uuid_get**
> Package packages_uuid_get(uuid, opts)

Returns the specified package.

Returns the specified package.

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

api_instance = SwaggerClient::PackagesApi.new

uuid = "uuid_example" # String | UUID of the package.

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Returns the specified package.
  result = api_instance.packages_uuid_get(uuid, opts)
  p result
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PackagesApi->packages_uuid_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUID of the package. | 
 **authorization** | **String**|  | [optional] 

### Return type

[**Package**](Package.md)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **packages_uuid_put**
> packages_uuid_put(uuid, package, opts)

Updates the specified package's properties.

Updates the specified package with the properties defined in the provided package object.

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

api_instance = SwaggerClient::PackagesApi.new

uuid = "uuid_example" # String | UUID of the package.

package = SwaggerClient::Package.new # Package | A Package object containing the updated properties for the specified package.

opts = { 
  authorization: "authorization_example" # String | 
}

begin
  #Updates the specified package's properties.
  api_instance.packages_uuid_put(uuid, package, opts)
rescue SwaggerClient::ApiError => e
  puts "Exception when calling PackagesApi->packages_uuid_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uuid** | **String**| UUID of the package. | 
 **package** | [**Package**](Package.md)| A Package object containing the updated properties for the specified package. | 
 **authorization** | **String**|  | [optional] 

### Return type

nil (empty response body)

### Authorization

[authorization](../README.md#authorization)

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



