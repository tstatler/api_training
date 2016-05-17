# SwaggerClient::APIError

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_side** | **BOOLEAN** | If `true`, the error was due to a client-side error (e.g., invalid data); otherwise, the error was due to a server-side error (e.g. a NATS timeout). | [optional] 
**code** | **Integer** | HTTP status code returned to the user. | [optional] 
**duplicate_key** | **BOOLEAN** | If `true`, the resource that&#39;s being sought already exists. | [optional] 
**fatal** | **BOOLEAN** | If `true`, the action was fatal and should not be retried. | [optional] 
**message** | **String** | Error message string. | [optional] 
**missing_claims** | **Array&lt;String&gt;** | A list of missing policy claim(s) on policy denials. | [optional] 
**policy_error** | [**PolicyError**](PolicyError.md) |  | [optional] 
**request_id** | **String** | ID of the NATS message or HTTP request that generated the error. | [optional] 
**request_invalid** | **BOOLEAN** | If `true`, the request cannot be processed due to a conflict. | [optional] 
**requires_restart** | **BOOLEAN** | If `true`, the targeted resource is in a state where the request cannot be fulfilled; for instance, a job in the `started` state may not have its resources changed. | [optional] 
**resource_missing** | **BOOLEAN** | If `true`, the requested resource could not be located. | [optional] 
**_retry** | **BOOLEAN** | If `true`, the problem encountered was transient, and the same payload can be delivered again. | [optional] 
**token_invalid** | **BOOLEAN** | If `true`, the requestor&#39;s token was invalid (e.g., due to a timeout.) | [optional] 
**try_again_in_ms** | **Integer** | Specifies the amount of time in milliseconds that the client should wait before retrying the request. | [optional] 


