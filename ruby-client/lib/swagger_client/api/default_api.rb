=begin
Apcera APIs

REST APIs used to manage an Apcera cluster and its resources. 

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require "uri"

module SwaggerClient
  class DefaultApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Returns audit log items for the cluster.
    # Returns a list audit log items. You can optionally filter the list by start time, end time, FQN, or event type.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :start_time UNIX timestamp. If specified, only events that occurred on or after the specified time are returned in the response.
    # @option opts [Float] :end_time UNIX timestamp. If specified, only events that occurred on or before the specified time are returned in the response.
    # @option opts [String] :fqn If specified, only events on the resource specified by `fqn` are returned in the response. You can also specify an FQN segment, which may include wildcards for the resource type. For example:\n * `*::/` returns all audit logs for all resource types.\n * `job::/` returns all audit logs for Job resource types. \n * `job::/apcera` returns all audit logs for Job resource types in the `/apcera` namespace and its sub-namespaces. \n * `*::/apcera` returns all audit logs for all resource types in the `/apcera` namespace its sub-namespaces.
    # @option opts [String] :event_type If specified, only events of the specified type are returned in the response.
    # @option opts [String] :authorization 
    # @return [Array<AuditLogItem>]
    def audit_get(opts = {})
      data, status_code, headers = audit_get_with_http_info(opts)
      return data
    end

    # Returns audit log items for the cluster.
    # Returns a list audit log items. You can optionally filter the list by start time, end time, FQN, or event type.
    # @param [Hash] opts the optional parameters
    # @option opts [Float] :start_time UNIX timestamp. If specified, only events that occurred on or after the specified time are returned in the response.
    # @option opts [Float] :end_time UNIX timestamp. If specified, only events that occurred on or before the specified time are returned in the response.
    # @option opts [String] :fqn If specified, only events on the resource specified by `fqn` are returned in the response. You can also specify an FQN segment, which may include wildcards for the resource type. For example:\n * `*::/` returns all audit logs for all resource types.\n * `job::/` returns all audit logs for Job resource types. \n * `job::/apcera` returns all audit logs for Job resource types in the `/apcera` namespace and its sub-namespaces. \n * `*::/apcera` returns all audit logs for all resource types in the `/apcera` namespace its sub-namespaces.
    # @option opts [String] :event_type If specified, only events of the specified type are returned in the response.
    # @option opts [String] :authorization 
    # @return [Array<(Array<AuditLogItem>, Fixnum, Hash)>] Array<AuditLogItem> data, response status code and response headers
    def audit_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: DefaultApi#audit_get ..."
      end
      
      # resource path
      local_var_path = "/audit".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'start_time'] = opts[:'start_time'] if opts[:'start_time']
      query_params[:'end_time'] = opts[:'end_time'] if opts[:'end_time']
      query_params[:'fqn'] = opts[:'fqn'] if opts[:'fqn']
      query_params[:'event_type'] = opts[:'event_type'] if opts[:'event_type']

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
        :return_type => 'Array<AuditLogItem>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DefaultApi#audit_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
