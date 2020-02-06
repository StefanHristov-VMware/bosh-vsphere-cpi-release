=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'uri'

module NSXT
  class ManagementPlaneApiTroubleshootingAndMonitoringIpfixApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get the list of IPFIX observation points
    # Deprecated - Please use /ipfix-profiles for switch IPFIX profile and /ipfix-collector-profiles for IPFIX collector profile. 
    # @param [Hash] opts the optional parameters
    # @return [IpfixObsPointsListResult]
    def get_ipfix_obs_points(opts = {})
      data, _status_code, _headers = get_ipfix_obs_points_with_http_info(opts)
      data
    end

    # Get the list of IPFIX observation points
    # Deprecated - Please use /ipfix-profiles for switch IPFIX profile and /ipfix-collector-profiles for IPFIX collector profile. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IpfixObsPointsListResult, Fixnum, Hash)>] IpfixObsPointsListResult data, response status code and response headers
    def get_ipfix_obs_points_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiTroubleshootingAndMonitoringIpfixApi.get_ipfix_obs_points ...'
      end
      # resource path
      local_var_path = '/ipfix-obs-points'

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
        :return_type => 'IpfixObsPointsListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiTroubleshootingAndMonitoringIpfixApi#get_ipfix_obs_points\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Read global switch IPFIX export configuration
    # Deprecated - Please use /ipfix-profiles/<ipfix-profile-id> for switch IPFIX profile and /ipfix-collector-profiles/<ipfix-collector-profile-id> for IPFIX collector profile. 
    # @param [Hash] opts the optional parameters
    # @return [IpfixObsPointConfig]
    def get_switch_ipfix_config(opts = {})
      data, _status_code, _headers = get_switch_ipfix_config_with_http_info(opts)
      data
    end

    # Read global switch IPFIX export configuration
    # Deprecated - Please use /ipfix-profiles/&lt;ipfix-profile-id&gt; for switch IPFIX profile and /ipfix-collector-profiles/&lt;ipfix-collector-profile-id&gt; for IPFIX collector profile. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IpfixObsPointConfig, Fixnum, Hash)>] IpfixObsPointConfig data, response status code and response headers
    def get_switch_ipfix_config_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiTroubleshootingAndMonitoringIpfixApi.get_switch_ipfix_config ...'
      end
      # resource path
      local_var_path = '/ipfix-obs-points/switch-global'

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
        :return_type => 'IpfixObsPointConfig')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiTroubleshootingAndMonitoringIpfixApi#get_switch_ipfix_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update global switch IPFIX export configuration
    # Deprecated - Please use /ipfix-profiles/<ipfix-profile-id> for switch IPFIX profile and /ipfix-collector-profiles/<ipfix-collector-profile-id> for IPFIX collector profile. 
    # @param ipfix_obs_point_config 
    # @param [Hash] opts the optional parameters
    # @return [IpfixObsPointConfig]
    def update_switch_ipfix_config(ipfix_obs_point_config, opts = {})
      data, _status_code, _headers = update_switch_ipfix_config_with_http_info(ipfix_obs_point_config, opts)
      data
    end

    # Update global switch IPFIX export configuration
    # Deprecated - Please use /ipfix-profiles/&lt;ipfix-profile-id&gt; for switch IPFIX profile and /ipfix-collector-profiles/&lt;ipfix-collector-profile-id&gt; for IPFIX collector profile. 
    # @param ipfix_obs_point_config 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IpfixObsPointConfig, Fixnum, Hash)>] IpfixObsPointConfig data, response status code and response headers
    def update_switch_ipfix_config_with_http_info(ipfix_obs_point_config, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiTroubleshootingAndMonitoringIpfixApi.update_switch_ipfix_config ...'
      end
      # verify the required parameter 'ipfix_obs_point_config' is set
      if @api_client.config.client_side_validation && ipfix_obs_point_config.nil?
        fail ArgumentError, "Missing the required parameter 'ipfix_obs_point_config' when calling ManagementPlaneApiTroubleshootingAndMonitoringIpfixApi.update_switch_ipfix_config"
      end
      # resource path
      local_var_path = '/ipfix-obs-points/switch-global'

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
      post_body = @api_client.object_to_http_body(ipfix_obs_point_config)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IpfixObsPointConfig')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiTroubleshootingAndMonitoringIpfixApi#update_switch_ipfix_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
