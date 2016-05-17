# SwaggerClient::Service

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uuid** | **String** | Service&#39;s unique identifer | [optional] 
**fqn** | **String** | Service&#39;s fully-qualified name. | [optional] 
**provider_fqn** | **String** | Fully-qualified name of provider used to create service. | [optional] 
**type** | **String** | A service type (&#39;mysql&#39;, &#39;postgres&#39;, &#39;mongodb&#39;, etc.) that corresponds to a service gateway of that type. | [optional] 
**description** | **String** | A human-readable description of the service. | [optional] 
**created_by** | **String** | Principal name of the user who created the service. | [optional] 
**created_at** | **Float** | UNIX timestamp when service was created. | [optional] 
**parameters** | **Object** | A map of service parameter names to values. | [optional] 


