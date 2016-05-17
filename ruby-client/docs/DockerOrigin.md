# SwaggerClient::DockerOrigin

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**image_name** | **String** | Name of Docker image used to create the job. | [optional] 
**image_tag** | **String** | Tag assigned to the Docker image used to create the job. | [optional] 
**registry_url** | **String** | URL of private Docker registry used to create the job. Empty for if the Docker public registry (a.k.a. DockerHub) was used. | [optional] 
**volumes** | **Array&lt;String&gt;** | Volumes defined by the Docker image used to create the job. | [optional] 


