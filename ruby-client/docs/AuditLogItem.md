# SwaggerClient::AuditLogItem

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**event_type** | **String** | Event type. | [optional] 
**event_type_int** | **Integer** | Integer used as the index of an enumeration of human-readable event types (see `event_type`). | [optional] 
**fqn** | **String** | Fully-qualified name of the resource on which the auditable action was attempted. | [optional] 
**localname** | **String** | Local name of the resource on which the auditable action was attempted. | [optional] 
**namespace** | **String** | Namespace of the resource on which the auditable action was attempted. | [optional] 
**on_behalf_of** | **String** | Username on whose behalf the auditable action was attempted by `principal_name`. | [optional] 
**payload** | **String** | Simple structured auditing data like JSON output. | [optional] 
**principal_name** | **String** | The actor (API Server or Health Manager, for example) or user that attempted the auditable action. | [optional] 
**resource_type** | **String** | The resource type on which the auditable action was attempted. | [optional] 
**timestamp** | **Float** | UNIX timestamp that indicates when the event occurred. | [optional] 
**uuid** | **String** | Unique identifier for the audit log entry. | [optional] 


