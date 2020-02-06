=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'uri'

module NSXT
  class ManagementPlaneApiServicesMetadataProxyApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a metadata proxy
    # Create a metadata proxy
    # @param metadata_proxy 
    # @param [Hash] opts the optional parameters
    # @return [MetadataProxy]
    def create_metadata_proxy(metadata_proxy, opts = {})
      data, _status_code, _headers = create_metadata_proxy_with_http_info(metadata_proxy, opts)
      data
    end

    # Create a metadata proxy
    # Create a metadata proxy
    # @param metadata_proxy 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MetadataProxy, Fixnum, Hash)>] MetadataProxy data, response status code and response headers
    def create_metadata_proxy_with_http_info(metadata_proxy, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiServicesMetadataProxyApi.create_metadata_proxy ...'
      end
      # verify the required parameter 'metadata_proxy' is set
      if @api_client.config.client_side_validation && metadata_proxy.nil?
        fail ArgumentError, "Missing the required parameter 'metadata_proxy' when calling ManagementPlaneApiServicesMetadataProxyApi.create_metadata_proxy"
      end
      # resource path
      local_var_path = '/md-proxies'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(metadata_proxy)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MetadataProxy')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiServicesMetadataProxyApi#create_metadata_proxy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a metadata proxy
    # Delete a metadata proxy
    # @param proxy_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_metadata_proxy(proxy_id, opts = {})
      delete_metadata_proxy_with_http_info(proxy_id, opts)
      nil
    end

    # Delete a metadata proxy
    # Delete a metadata proxy
    # @param proxy_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_metadata_proxy_with_http_info(proxy_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiServicesMetadataProxyApi.delete_metadata_proxy ...'
      end
      # verify the required parameter 'proxy_id' is set
      if @api_client.config.client_side_validation && proxy_id.nil?
        fail ArgumentError, "Missing the required parameter 'proxy_id' when calling ManagementPlaneApiServicesMetadataProxyApi.delete_metadata_proxy"
      end
      # resource path
      local_var_path = '/md-proxies/{proxy-id}'.sub('{' + 'proxy-id' + '}', proxy_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiServicesMetadataProxyApi#delete_metadata_proxy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Metadata Proxy statistics with given proxy id
    # Returns the statistics of the given metatada proxy. If no logical switch is provided, all staticstics of all the logical switches the proxy was attached will be returned. 
    # @param proxy_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :logical_switch_id The uuid of logical switch
    # @option opts [String] :source Data source type.
    # @return [MetadataProxyStatistics]
    def get_metadata_proxy_statistics(proxy_id, opts = {})
      data, _status_code, _headers = get_metadata_proxy_statistics_with_http_info(proxy_id, opts)
      data
    end

    # Get Metadata Proxy statistics with given proxy id
    # Returns the statistics of the given metatada proxy. If no logical switch is provided, all staticstics of all the logical switches the proxy was attached will be returned. 
    # @param proxy_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :logical_switch_id The uuid of logical switch
    # @option opts [String] :source Data source type.
    # @return [Array<(MetadataProxyStatistics, Fixnum, Hash)>] MetadataProxyStatistics data, response status code and response headers
    def get_metadata_proxy_statistics_with_http_info(proxy_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiServicesMetadataProxyApi.get_metadata_proxy_statistics ...'
      end
      # verify the required parameter 'proxy_id' is set
      if @api_client.config.client_side_validation && proxy_id.nil?
        fail ArgumentError, "Missing the required parameter 'proxy_id' when calling ManagementPlaneApiServicesMetadataProxyApi.get_metadata_proxy_statistics"
      end
      if @api_client.config.client_side_validation && opts[:'source'] && !['realtime', 'cached'].include?(opts[:'source'])
        fail ArgumentError, 'invalid value for "source", must be one of realtime, cached'
      end
      # resource path
      local_var_path = '/md-proxies/{proxy-id}/statistics'.sub('{' + 'proxy-id' + '}', proxy_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'logical_switch_id'] = opts[:'logical_switch_id'] if !opts[:'logical_switch_id'].nil?
      query_params[:'source'] = opts[:'source'] if !opts[:'source'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MetadataProxyStatistics')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiServicesMetadataProxyApi#get_metadata_proxy_statistics\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Metadata Proxy status with given proxy id and attached logical switch.
    # Returns the status of the given metadata proxy and attached logical switch. 
    # @param proxy_id 
    # @param logical_switch_id 
    # @param [Hash] opts the optional parameters
    # @return [MetadataProxyStatus]
    def get_metadata_proxy_status(proxy_id, logical_switch_id, opts = {})
      data, _status_code, _headers = get_metadata_proxy_status_with_http_info(proxy_id, logical_switch_id, opts)
      data
    end

    # Get Metadata Proxy status with given proxy id and attached logical switch.
    # Returns the status of the given metadata proxy and attached logical switch. 
    # @param proxy_id 
    # @param logical_switch_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MetadataProxyStatus, Fixnum, Hash)>] MetadataProxyStatus data, response status code and response headers
    def get_metadata_proxy_status_with_http_info(proxy_id, logical_switch_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiServicesMetadataProxyApi.get_metadata_proxy_status ...'
      end
      # verify the required parameter 'proxy_id' is set
      if @api_client.config.client_side_validation && proxy_id.nil?
        fail ArgumentError, "Missing the required parameter 'proxy_id' when calling ManagementPlaneApiServicesMetadataProxyApi.get_metadata_proxy_status"
      end
      # verify the required parameter 'logical_switch_id' is set
      if @api_client.config.client_side_validation && logical_switch_id.nil?
        fail ArgumentError, "Missing the required parameter 'logical_switch_id' when calling ManagementPlaneApiServicesMetadataProxyApi.get_metadata_proxy_status"
      end
      # resource path
      local_var_path = '/md-proxies/{proxy-id}/{logical-switch-id}/status'.sub('{' + 'proxy-id' + '}', proxy_id.to_s).sub('{' + 'logical-switch-id' + '}', logical_switch_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MetadataProxyStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiServicesMetadataProxyApi#get_metadata_proxy_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a paginated list of metadata proxies
    # Get a paginated list of metadata proxies
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [MetadataProxyListResult]
    def list_metadata_proxy(opts = {})
      data, _status_code, _headers = list_metadata_proxy_with_http_info(opts)
      data
    end

    # Get a paginated list of metadata proxies
    # Get a paginated list of metadata proxies
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(MetadataProxyListResult, Fixnum, Hash)>] MetadataProxyListResult data, response status code and response headers
    def list_metadata_proxy_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiServicesMetadataProxyApi.list_metadata_proxy ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiServicesMetadataProxyApi.list_metadata_proxy, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiServicesMetadataProxyApi.list_metadata_proxy, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/md-proxies'

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'sort_ascending'] = opts[:'sort_ascending'] if !opts[:'sort_ascending'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MetadataProxyListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiServicesMetadataProxyApi#list_metadata_proxy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a metadata proxy
    # Get a metadata proxy
    # @param proxy_id 
    # @param [Hash] opts the optional parameters
    # @return [MetadataProxy]
    def read_metadata_proxy(proxy_id, opts = {})
      data, _status_code, _headers = read_metadata_proxy_with_http_info(proxy_id, opts)
      data
    end

    # Get a metadata proxy
    # Get a metadata proxy
    # @param proxy_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MetadataProxy, Fixnum, Hash)>] MetadataProxy data, response status code and response headers
    def read_metadata_proxy_with_http_info(proxy_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiServicesMetadataProxyApi.read_metadata_proxy ...'
      end
      # verify the required parameter 'proxy_id' is set
      if @api_client.config.client_side_validation && proxy_id.nil?
        fail ArgumentError, "Missing the required parameter 'proxy_id' when calling ManagementPlaneApiServicesMetadataProxyApi.read_metadata_proxy"
      end
      # resource path
      local_var_path = '/md-proxies/{proxy-id}'.sub('{' + 'proxy-id' + '}', proxy_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MetadataProxy')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiServicesMetadataProxyApi#read_metadata_proxy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a metadata proxy
    # Update a metadata proxy
    # @param proxy_id 
    # @param metadata_proxy 
    # @param [Hash] opts the optional parameters
    # @return [MetadataProxy]
    def update_metadata_proxy(proxy_id, metadata_proxy, opts = {})
      data, _status_code, _headers = update_metadata_proxy_with_http_info(proxy_id, metadata_proxy, opts)
      data
    end

    # Update a metadata proxy
    # Update a metadata proxy
    # @param proxy_id 
    # @param metadata_proxy 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MetadataProxy, Fixnum, Hash)>] MetadataProxy data, response status code and response headers
    def update_metadata_proxy_with_http_info(proxy_id, metadata_proxy, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiServicesMetadataProxyApi.update_metadata_proxy ...'
      end
      # verify the required parameter 'proxy_id' is set
      if @api_client.config.client_side_validation && proxy_id.nil?
        fail ArgumentError, "Missing the required parameter 'proxy_id' when calling ManagementPlaneApiServicesMetadataProxyApi.update_metadata_proxy"
      end
      # verify the required parameter 'metadata_proxy' is set
      if @api_client.config.client_side_validation && metadata_proxy.nil?
        fail ArgumentError, "Missing the required parameter 'metadata_proxy' when calling ManagementPlaneApiServicesMetadataProxyApi.update_metadata_proxy"
      end
      # resource path
      local_var_path = '/md-proxies/{proxy-id}'.sub('{' + 'proxy-id' + '}', proxy_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(metadata_proxy)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'MetadataProxy')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiServicesMetadataProxyApi#update_metadata_proxy\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
