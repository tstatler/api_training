# load the swagger_client gem
require 'swagger_client'

SwaggerClient.configure do |config|
  config.api_key['authorization'] = ENV["TOKEN"]
  config.api_key_prefix['authorization'] = 'Bearer'
end

# Create an API instance
api_instance = SwaggerClient::JobsApi.new

begin
  #Returns the default namespace for the currently logged-in user.
  results = api_instance.jobs_get()
  puts "Job list:"
  results.each do |job |
    puts job.name
  end
rescue SwaggerClient::ApiError => e
  puts "Exception when calling JobsApi->namespace_default_get: #{e}"
end
