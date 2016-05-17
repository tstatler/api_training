# SwaggerClient::Package

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **DateTime** | The date and time when the package was created. | [optional] 
**created_by** | **String** | Principal name of the user who created the package. | [optional] 
**dependencies** | [**Array&lt;Dependency&gt;**](Dependency.md) | List of dependencies that the package has in order to be used. A dependency expresses a requirement that a package has on an other package. | [optional] 
**environment** | **Hash&lt;String, String&gt;** | List of environment variables that are added to any process that uses the package. | [optional] 
**error_message** | **String** | Error encountered during an asynchronous operation on the package. An example is a failure encountered during instance snapshot; the ErrorMessage field on the created snapshot package would contain more information. | [optional] 
**fqn** | **String** | Package&#39;s fully-qualified name. | [optional] 
**name** | **String** | Package name. | [optional] 
**provides** | [**Array&lt;Provide&gt;**](Provide.md) | List of &#39;provides&#39; that the package provides for other packages to use. A &#39;provide&#39; expresses a named resource that other packages or jobs can add as a dependency. | [optional] 
**resource** | [**PackageResource**](PackageResource.md) | Deprecated. Use `resources`. An object that describes the package&#39;s associated binary resource.  | [optional] 
**resources** | [**Array&lt;PackageResource&gt;**](PackageResource.md) | An list of objects that describes the package&#39;s associated binary resources. | [optional] 
**staging_pipeline** | **String** | The UUID of the staging pipeline used to stage this package into a runnable state. | [optional] 
**staging_pipeline_fqn** | **String** | The fully-qualified name of the staging pipeline used to stage the package. | [optional] 
**state** | **String** | Package state. Possible values are `uploading`, &#39;staging`, `failed`, `ready`, `deleted`, and `unknown`. | [optional] 
**tags** | **Hash&lt;String, String&gt;** | Map of tags by tag name. | [optional] 
**updated_at** | **DateTime** | The date and time when the package was most recently updated. | [optional] 
**updated_by** | **String** | Principal name of the last user to update the package. | [optional] 
**uuid** | **String** | The package&#39;s unique identifier. | [optional] 
**version_id** | **Integer** | Package&#39;s auto-incremented version number. | [optional] 


