# load the swagger_client gem
require 'swagger_client'
require 'sinatra'

class MyApp < Sinatra::Base

    SwaggerClient.configure do |config|
      config.api_key['authorization'] = ENV["TOKEN"]
      config.api_key_prefix['authorization'] = 'Bearer'
    end

    jobs_api_instance = SwaggerClient::JobsApi.new

    get '/jobs' do
      begin
        @results = jobs_api_instance.jobs_get()
      rescue SwaggerClient::ApiError => e
        puts "Exception when calling JobsApi->jobs_get: #{e}"
      end
      erb :jobs
    end

    get '/jobs/:uuid' do
      begin
        uuid = params[:uuid]
        @job = jobs_api_instance.jobs_uuid_get(uuid)
      rescue SwaggerClient::ApiError => e
        "Exception when calling JobsApi->jobs_uuid_get: #{e}"
      end
      erb :job_details
    end

end
MyApp.run!
