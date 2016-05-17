# SwaggerClient::StagingPipeline

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** | The date and time when the staging pipeline was created. | [optional] 
**created_by** | **String** | Principal name of the user who created the staging pipeline. | [optional] 
**fqn** | **String** | Staging pipeline&#39;s FQN. | [optional] 
**name** | **String** | Staging pipeline&#39;s local name. | [optional] 
**stagers** | [**Array&lt;StagerJob&gt;**](StagerJob.md) | The list of jobs that will be cloned in order to make the specific stager instances. | [optional] 
**updated_at** | **DateTime** | The date and time when the staging pipeline was most recently updated. | [optional] 
**updated_by** | **String** | Principal name of the user who last updated the staging pipeline. | [optional] 
**uuid** | **String** | Staging pipeline&#39;s unique identifier. | [optional] 
**version_id** | **String** | Staging pipeline&#39;s auto-incremented version number. | [optional] 


