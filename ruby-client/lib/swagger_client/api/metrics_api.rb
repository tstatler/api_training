=begin
Apcera APIs

REST APIs used to manage an Apcera cluster and its resources. 

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require "uri"

module SwaggerClient
  class MetricsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Returns metrics data for the cluster.
    # Returns metrics data for the cluster.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :metric Comma-delimited string that includes, in order, the following fields: \n * Job FQN (wildcards accepted) \n * Instance manager hostname (can be a wildcard)\n * Instance ID \n * Metric to evaluate \n * &#39;From&#39; time (optional)\n * &#39;To&#39; time (optional).
    # @option opts [String] :authorization 
    # @return [Metrics]
    def metrics_cluster_get(opts = {})
      data, status_code, headers = metrics_cluster_get_with_http_info(opts)
      return data
    end

    # Returns metrics data for the cluster.
    # Returns metrics data for the cluster.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :metric Comma-delimited string that includes, in order, the following fields: \n * Job FQN (wildcards accepted) \n * Instance manager hostname (can be a wildcard)\n * Instance ID \n * Metric to evaluate \n * &#39;From&#39; time (optional)\n * &#39;To&#39; time (optional).
    # @option opts [String] :authorization 
    # @return [Array<(Metrics, Fixnum, Hash)>] Metrics data, response status code and response headers
    def metrics_cluster_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MetricsApi#metrics_cluster_get ..."
      end
      
      # resource path
      local_var_path = "/metrics/cluster".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'metric'] = @api_client.build_collection_param(opts[:'metric'], :multi) if opts[:'metric']

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
        :return_type => 'Metrics')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetricsApi#metrics_cluster_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns metrics for instance managers.
    # Returns metrics for instance managers.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :metric 
    # @option opts [String] :authorization 
    # @return [Metrics]
    def metrics_instance_managers_get(opts = {})
      data, status_code, headers = metrics_instance_managers_get_with_http_info(opts)
      return data
    end

    # Returns metrics for instance managers.
    # Returns metrics for instance managers.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :metric 
    # @option opts [String] :authorization 
    # @return [Array<(Metrics, Fixnum, Hash)>] Metrics data, response status code and response headers
    def metrics_instance_managers_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MetricsApi#metrics_instance_managers_get ..."
      end
      
      # resource path
      local_var_path = "/metrics/instance_managers".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'metric'] = @api_client.build_collection_param(opts[:'metric'], :multi) if opts[:'metric']

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
        :return_type => 'Metrics')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetricsApi#metrics_instance_managers_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns job metrics.
    # Returns job metrics.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :metric Comma-delimited string that includes, in order, the following fields: \n * Job FQN (wildcards accepted) \n * Instance manager hostname (can be a wildcard)\n * Instance ID \n * Metric to evaluate \n * &#39;From&#39; time (optional)\n * &#39;To&#39; time (optional).
    # @option opts [String] :authorization 
    # @return [Metrics]
    def metrics_jobs_get(opts = {})
      data, status_code, headers = metrics_jobs_get_with_http_info(opts)
      return data
    end

    # Returns job metrics.
    # Returns job metrics.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :metric Comma-delimited string that includes, in order, the following fields: \n * Job FQN (wildcards accepted) \n * Instance manager hostname (can be a wildcard)\n * Instance ID \n * Metric to evaluate \n * &#39;From&#39; time (optional)\n * &#39;To&#39; time (optional).
    # @option opts [String] :authorization 
    # @return [Array<(Metrics, Fixnum, Hash)>] Metrics data, response status code and response headers
    def metrics_jobs_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MetricsApi#metrics_jobs_get ..."
      end
      
      # resource path
      local_var_path = "/metrics/jobs".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'metric'] = @api_client.build_collection_param(opts[:'metric'], :multi) if opts[:'metric']

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
        :return_type => 'Metrics')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetricsApi#metrics_jobs_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns metrics for counters on the route.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :metric 
    # @option opts [String] :authorization 
    # @return [Metrics]
    def metrics_route_counters_get(opts = {})
      data, status_code, headers = metrics_route_counters_get_with_http_info(opts)
      return data
    end

    # Returns metrics for counters on the route.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :metric 
    # @option opts [String] :authorization 
    # @return [Array<(Metrics, Fixnum, Hash)>] Metrics data, response status code and response headers
    def metrics_route_counters_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MetricsApi#metrics_route_counters_get ..."
      end
      
      # resource path
      local_var_path = "/metrics/route/counters".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'metric'] = @api_client.build_collection_param(opts[:'metric'], :multi) if opts[:'metric']

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
        :return_type => 'Metrics')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetricsApi#metrics_route_counters_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns metrics for timers on the route.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :metric 
    # @option opts [String] :authorization 
    # @return [Metrics]
    def metrics_route_timers_get(opts = {})
      data, status_code, headers = metrics_route_timers_get_with_http_info(opts)
      return data
    end

    # Returns metrics for timers on the route.
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Array<String>] :metric 
    # @option opts [String] :authorization 
    # @return [Array<(Metrics, Fixnum, Hash)>] Metrics data, response status code and response headers
    def metrics_route_timers_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: MetricsApi#metrics_route_timers_get ..."
      end
      
      # resource path
      local_var_path = "/metrics/route/timers".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'metric'] = @api_client.build_collection_param(opts[:'metric'], :multi) if opts[:'metric']

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
        :return_type => 'Metrics')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: MetricsApi#metrics_route_timers_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end