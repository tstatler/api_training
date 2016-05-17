# SwaggerClient::VirtualNetwork

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fqn** | **String** | Network&#39;s fully-qualified name. | [optional] 
**name** | **String** | Network&#39;s local name. | [optional] 
**description** | **String** | Network description. | [optional] 
**uuid** | **String** | Network&#39;s unique ID. | [optional] 
**subnet_info** | [**SubnetInfo**](SubnetInfo.md) | Contains information about the network&#39;s subnet. | [optional] 
**updated_at** | **Float** | UNIX timestamp when the network was last updated. | [optional] 
**updated_by** | **String** | Principal name of user who last updated the network. | [optional] 
**created_at** | **Float** | UNIX timestamp when the network was created. | [optional] 
**created_by** | **String** | Principal name of user who created the network. | [optional] 
**network_end_points** | [**Array&lt;VirtualNetworkEndpoint&gt;**](VirtualNetworkEndpoint.md) | A list of network endpoints in the network. | [optional] 
**version_id** | **Integer** | Auto-incrementing version number for the network. | [optional] 


