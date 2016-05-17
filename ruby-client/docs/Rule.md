# SwaggerClient::Rule

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**action** | **String** | The type of action to take when the rule is triggered. Can either by &#39;hook&#39; or &#39;notification&#39;. | [optional] 
**created_at** | **Float** | UNIX timestamp when event rule was created. | [optional] 
**created_by** | **String** | Principal name of user who created the event rule. | [optional] 
**fqn** | **String** | The rule&#39;s fully-qualified name against which policy may be enforced. | [optional] 
**job** | **String** | FQN of the job to enforce the rule against. | [optional] 
**provider** | **String** | FQN of the provider to enforce this rule against. In only `provider` is populated for this rule, then all semantic pipelines consuming a provider matching this FQN will have the rule enforced against them. | [optional] 
**service** | **String** | FQN of the service to enforce this rule against. If only `service` is populated for this rule, then all semantic pipelines consuming a service matching this FQN will have the rule enforced against them. | [optional] 
**type** | **String** | Type depends upon specified `action` of event rule, and can specify the timing of the hook firing. | [optional] 
**version_id** | **Integer** | Rule&#39;s auto-incremented version number. | [optional] 


