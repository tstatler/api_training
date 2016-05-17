# SwaggerClient::RestartConfig

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**maximum_attempts** | **Integer** | The maximum number of restart attempts per instance, applies to `always` and `failure` restart modes. If set to 0 restarts are not limited. | [optional] 
**restart_mode** | **String** | The restart mode to use. Valid values are `always` (always restart), `no` (never restart), and `failure` (only restart on application failure). | [optional] 


