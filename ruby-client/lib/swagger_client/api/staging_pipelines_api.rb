=begin
Apcera APIs

REST APIs used to manage an Apcera cluster and its resources. 

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require "uri"

module SwaggerClient
  class StagingPipelinesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Lists all staging pipelines
    # Lists all staging pipelines. To return a single staging pipeline specify its fully qualified name in the `fqn` query parameter.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fqn The fully qualified name the staging pipeline to retrieve.
    # @option opts [String] :authorization 
    # @return [Array<StagingPipeline>]
    def stagingpipelines_get(opts = {})
      data, status_code, headers = stagingpipelines_get_with_http_info(opts)
      return data
    end

    # Lists all staging pipelines
    # Lists all staging pipelines. To return a single staging pipeline specify its fully qualified name in the `fqn` query parameter.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fqn The fully qualified name the staging pipeline to retrieve.
    # @option opts [String] :authorization 
    # @return [Array<(Array<StagingPipeline>, Fixnum, Hash)>] Array<StagingPipeline> data, response status code and response headers
    def stagingpipelines_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StagingPipelinesApi#stagingpipelines_get ..."
      end
      
      # resource path
      local_var_path = "/stagingpipelines".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'fqn'] = opts[:'fqn'] if opts[:'fqn']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)
      header_params[:'authorization'] = opts[:'authorization'] if opts[:'authorization']

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = ['authorization']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<StagingPipeline>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StagingPipelinesApi#stagingpipelines_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Creates a new staging pipeline.
    # Creates a new staging pipeline.
    # @param [Hash] opts the optional parameters
    # @option opts [StagingPipeline] :staging_pipeline Staging pipeline object to create.
    # @option opts [String] :authorization 
    # @return [nil]
    def stagingpipelines_post(opts = {})
      stagingpipelines_post_with_http_info(opts)
      return nil
    end

    # Creates a new staging pipeline.
    # Creates a new staging pipeline.
    # @param [Hash] opts the optional parameters
    # @option opts [StagingPipeline] :staging_pipeline Staging pipeline object to create.
    # @option opts [String] :authorization 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def stagingpipelines_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StagingPipelinesApi#stagingpipelines_post ..."
      end
      
      # resource path
      local_var_path = "/stagingpipelines".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)
      header_params[:'authorization'] = opts[:'authorization'] if opts[:'authorization']

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'staging_pipeline'])
      
      auth_names = ['authorization']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StagingPipelinesApi#stagingpipelines_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes the specified staging pipeline.
    # 
    # @param uuid UUID of the staging pipeline.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization 
    # @return [nil]
    def stagingpipelines_uuid_delete(uuid, opts = {})
      stagingpipelines_uuid_delete_with_http_info(uuid, opts)
      return nil
    end

    # Deletes the specified staging pipeline.
    # 
    # @param uuid UUID of the staging pipeline.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def stagingpipelines_uuid_delete_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StagingPipelinesApi#stagingpipelines_uuid_delete ..."
      end
      
      # verify the required parameter 'uuid' is set
      fail "Missing the required parameter 'uuid' when calling stagingpipelines_uuid_delete" if uuid.nil?
      
      # resource path
      local_var_path = "/stagingpipelines/{uuid}".sub('{format}','json').sub('{' + 'uuid' + '}', uuid.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)
      header_params[:'authorization'] = opts[:'authorization'] if opts[:'authorization']

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = ['authorization']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StagingPipelinesApi#stagingpipelines_uuid_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Shows the specified staging pipeline.
    # 
    # @param uuid UUID of the staging pipeline.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization 
    # @return [nil]
    def stagingpipelines_uuid_get(uuid, opts = {})
      stagingpipelines_uuid_get_with_http_info(uuid, opts)
      return nil
    end

    # Shows the specified staging pipeline.
    # 
    # @param uuid UUID of the staging pipeline.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def stagingpipelines_uuid_get_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StagingPipelinesApi#stagingpipelines_uuid_get ..."
      end
      
      # verify the required parameter 'uuid' is set
      fail "Missing the required parameter 'uuid' when calling stagingpipelines_uuid_get" if uuid.nil?
      
      # resource path
      local_var_path = "/stagingpipelines/{uuid}".sub('{format}','json').sub('{' + 'uuid' + '}', uuid.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)
      header_params[:'authorization'] = opts[:'authorization'] if opts[:'authorization']

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = ['authorization']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StagingPipelinesApi#stagingpipelines_uuid_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates the specified staging pipeline.
    # 
    # @param uuid UUID of the staging pipeline.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization 
    # @return [nil]
    def stagingpipelines_uuid_put(uuid, opts = {})
      stagingpipelines_uuid_put_with_http_info(uuid, opts)
      return nil
    end

    # Updates the specified staging pipeline.
    # 
    # @param uuid UUID of the staging pipeline.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def stagingpipelines_uuid_put_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: StagingPipelinesApi#stagingpipelines_uuid_put ..."
      end
      
      # verify the required parameter 'uuid' is set
      fail "Missing the required parameter 'uuid' when calling stagingpipelines_uuid_put" if uuid.nil?
      
      # resource path
      local_var_path = "/stagingpipelines/{uuid}".sub('{format}','json').sub('{' + 'uuid' + '}', uuid.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = []
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)
      header_params[:'authorization'] = opts[:'authorization'] if opts[:'authorization']

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = ['authorization']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StagingPipelinesApi#stagingpipelines_uuid_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end