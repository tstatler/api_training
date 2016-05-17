# SwaggerClient::Route

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**endpoint** | **String** | The URI where the traffic should being routed to. For HTTP routes, the value should contain the route&#39;s host and path; for TCP routes, the value should take the form of \&quot;ip:port\&quot;. | [optional] 
**type** | **String** | The type of route. Valid values are `http` or `tcp`.  | [optional] 
**weight** | **Float** |  A value between 0 and 1 that specifies the route&#39;s weight, which is used to balance incoming traffic across apps that share the route. Weights are not on a specific scale; weights of all routes for a given job are normalized. | [optional] 


