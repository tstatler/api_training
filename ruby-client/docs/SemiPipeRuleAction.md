# SwaggerClient::SemiPipeRuleAction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**commands** | **Array&lt;String&gt;** | Commands that will trigger the hook or notification. | [optional] 
**uri** | **String** | URL to receive the hook or notification request. Required for notifications, but optional for hooks. | [optional] 
**inline** | **String** | If no URL is given, you can specify an action directly. URL and action cannot be specified at the same time. Action can be &#39;allow&#39; or &#39;deny&#39;. | [optional] 


