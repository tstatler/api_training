=begin
Apcera APIs

REST APIs used to manage an Apcera cluster and its resources. 

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require "uri"

module SwaggerClient
  class ProvidersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Returns a list of providers defined on the cluster.
    # Returns a list of providers defined on the cluster.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization 
    # @return [Array<Provider>]
    def providers_get(opts = {})
      data, status_code, headers = providers_get_with_http_info(opts)
      return data
    end

    # Returns a list of providers defined on the cluster.
    # Returns a list of providers defined on the cluster.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization 
    # @return [Array<(Array<Provider>, Fixnum, Hash)>] Array<Provider> data, response status code and response headers
    def providers_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi#providers_get ..."
      end
      
      # resource path
      local_var_path = "/providers".sub('{format}','json')

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
        :auth_names => auth_names,
        :return_type => 'Array<Provider>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#providers_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Creates a new provider.
    # Creates a new provider.
    # @param job An object that defines the properties of the new provider.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization 
    # @return [Array<Provider>]
    def providers_post(job, opts = {})
      data, status_code, headers = providers_post_with_http_info(job, opts)
      return data
    end

    # Creates a new provider.
    # Creates a new provider.
    # @param job An object that defines the properties of the new provider.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization 
    # @return [Array<(Array<Provider>, Fixnum, Hash)>] Array<Provider> data, response status code and response headers
    def providers_post_with_http_info(job, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi#providers_post ..."
      end
      
      # verify the required parameter 'job' is set
      fail "Missing the required parameter 'job' when calling providers_post" if job.nil?
      
      # resource path
      local_var_path = "/providers".sub('{format}','json')

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
      post_body = @api_client.object_to_http_body(job)
      
      auth_names = ['authorization']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<Provider>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#providers_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes the specified provider.
    # Deletes the specified provider.
    # @param uuid UUID of the provider to delete.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization 
    # @return [nil]
    def providers_uuid_delete(uuid, opts = {})
      providers_uuid_delete_with_http_info(uuid, opts)
      return nil
    end

    # Deletes the specified provider.
    # Deletes the specified provider.
    # @param uuid UUID of the provider to delete.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def providers_uuid_delete_with_http_info(uuid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi#providers_uuid_delete ..."
      end
      
      # verify the required parameter 'uuid' is set
      fail "Missing the required parameter 'uuid' when calling providers_uuid_delete" if uuid.nil?
      
      # resource path
      local_var_path = "/providers/{uuid}".sub('{format}','json').sub('{' + 'uuid' + '}', uuid.to_s)

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
        @api_client.config.logger.debug "API called: ProvidersApi#providers_uuid_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end