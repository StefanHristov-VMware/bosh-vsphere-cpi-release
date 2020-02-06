=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'uri'

module NSXT
  class ManagementPlaneApiLogicalSwitchingSwitchingProfilesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a Switching Profile
    # Creates a new, custom qos, port-mirroring, spoof-guard or port-security switching profile. You can override their default switching profile assignments by creating a new switching profile and assigning it to one or more logical switches. You cannot override the default ipfix or ip_discovery switching profiles. 
    # @param base_switching_profile 
    # @param [Hash] opts the optional parameters
    # @return [BaseSwitchingProfile]
    def create_switching_profile(base_switching_profile, opts = {})
      data, _status_code, _headers = create_switching_profile_with_http_info(base_switching_profile, opts)
      data
    end

    # Create a Switching Profile
    # Creates a new, custom qos, port-mirroring, spoof-guard or port-security switching profile. You can override their default switching profile assignments by creating a new switching profile and assigning it to one or more logical switches. You cannot override the default ipfix or ip_discovery switching profiles. 
    # @param base_switching_profile 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BaseSwitchingProfile, Fixnum, Hash)>] BaseSwitchingProfile data, response status code and response headers
    def create_switching_profile_with_http_info(base_switching_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiLogicalSwitchingSwitchingProfilesApi.create_switching_profile ...'
      end
      # verify the required parameter 'base_switching_profile' is set
      if @api_client.config.client_side_validation && base_switching_profile.nil?
        fail ArgumentError, "Missing the required parameter 'base_switching_profile' when calling ManagementPlaneApiLogicalSwitchingSwitchingProfilesApi.create_switching_profile"
      end
      # resource path
      local_var_path = '/switching-profiles'

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
      post_body = @api_client.object_to_http_body(base_switching_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseSwitchingProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiLogicalSwitchingSwitchingProfilesApi#create_switching_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a Switching Profile
    # Deletes the specified switching profile.
    # @param switching_profile_id 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :unbind force unbinding of logical switches and ports from a switching profile (default to false)
    # @return [nil]
    def delete_switching_profile(switching_profile_id, opts = {})
      delete_switching_profile_with_http_info(switching_profile_id, opts)
      nil
    end

    # Delete a Switching Profile
    # Deletes the specified switching profile.
    # @param switching_profile_id 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :unbind force unbinding of logical switches and ports from a switching profile
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_switching_profile_with_http_info(switching_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiLogicalSwitchingSwitchingProfilesApi.delete_switching_profile ...'
      end
      # verify the required parameter 'switching_profile_id' is set
      if @api_client.config.client_side_validation && switching_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'switching_profile_id' when calling ManagementPlaneApiLogicalSwitchingSwitchingProfilesApi.delete_switching_profile"
      end
      # resource path
      local_var_path = '/switching-profiles/{switching-profile-id}'.sub('{' + 'switching-profile-id' + '}', switching_profile_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'unbind'] = opts[:'unbind'] if !opts[:'unbind'].nil?

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
        @api_client.config.logger.debug "API called: ManagementPlaneApiLogicalSwitchingSwitchingProfilesApi#delete_switching_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Switching Profile by ID
    # Returns information about a specified switching profile.
    # @param switching_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [BaseSwitchingProfile]
    def get_switching_profile(switching_profile_id, opts = {})
      data, _status_code, _headers = get_switching_profile_with_http_info(switching_profile_id, opts)
      data
    end

    # Get Switching Profile by ID
    # Returns information about a specified switching profile.
    # @param switching_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BaseSwitchingProfile, Fixnum, Hash)>] BaseSwitchingProfile data, response status code and response headers
    def get_switching_profile_with_http_info(switching_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiLogicalSwitchingSwitchingProfilesApi.get_switching_profile ...'
      end
      # verify the required parameter 'switching_profile_id' is set
      if @api_client.config.client_side_validation && switching_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'switching_profile_id' when calling ManagementPlaneApiLogicalSwitchingSwitchingProfilesApi.get_switching_profile"
      end
      # resource path
      local_var_path = '/switching-profiles/{switching-profile-id}'.sub('{' + 'switching-profile-id' + '}', switching_profile_id.to_s)

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
        :return_type => 'BaseSwitchingProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiLogicalSwitchingSwitchingProfilesApi#get_switching_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Counts of Ports and Switches Using This Switching Profile
    # Get Counts of Ports and Switches Using This Switching Profile
    # @param switching_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [SwitchingProfileStatus]
    def get_switching_profile_status(switching_profile_id, opts = {})
      data, _status_code, _headers = get_switching_profile_status_with_http_info(switching_profile_id, opts)
      data
    end

    # Get Counts of Ports and Switches Using This Switching Profile
    # Get Counts of Ports and Switches Using This Switching Profile
    # @param switching_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SwitchingProfileStatus, Fixnum, Hash)>] SwitchingProfileStatus data, response status code and response headers
    def get_switching_profile_status_with_http_info(switching_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiLogicalSwitchingSwitchingProfilesApi.get_switching_profile_status ...'
      end
      # verify the required parameter 'switching_profile_id' is set
      if @api_client.config.client_side_validation && switching_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'switching_profile_id' when calling ManagementPlaneApiLogicalSwitchingSwitchingProfilesApi.get_switching_profile_status"
      end
      # resource path
      local_var_path = '/switching-profiles/{switching-profile-id}/summary'.sub('{' + 'switching-profile-id' + '}', switching_profile_id.to_s)

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
        :return_type => 'SwitchingProfileStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiLogicalSwitchingSwitchingProfilesApi#get_switching_profile_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List Switching Profiles
    # Returns information about the system-default and user-configured switching profiles. Each switching profile has a unique ID, a display name, and various other read-only and configurable properties. The default switching profiles are assigned automatically to each switch. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_system_owned Whether the list result contains system resources (default to false)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @option opts [String] :switching_profile_type comma-separated list of switching profile types, e.g. ?switching_profile_type&#x3D;QosSwitchingProfile,IpDiscoverySwitchingProfile
    # @return [SwitchingProfilesListResult]
    def list_switching_profiles(opts = {})
      data, _status_code, _headers = list_switching_profiles_with_http_info(opts)
      data
    end

    # List Switching Profiles
    # Returns information about the system-default and user-configured switching profiles. Each switching profile has a unique ID, a display name, and various other read-only and configurable properties. The default switching profiles are assigned automatically to each switch. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_system_owned Whether the list result contains system resources
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @option opts [String] :switching_profile_type comma-separated list of switching profile types, e.g. ?switching_profile_type&#x3D;QosSwitchingProfile,IpDiscoverySwitchingProfile
    # @return [Array<(SwitchingProfilesListResult, Fixnum, Hash)>] SwitchingProfilesListResult data, response status code and response headers
    def list_switching_profiles_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiLogicalSwitchingSwitchingProfilesApi.list_switching_profiles ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiLogicalSwitchingSwitchingProfilesApi.list_switching_profiles, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiLogicalSwitchingSwitchingProfilesApi.list_switching_profiles, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/switching-profiles'

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'include_system_owned'] = opts[:'include_system_owned'] if !opts[:'include_system_owned'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'sort_ascending'] = opts[:'sort_ascending'] if !opts[:'sort_ascending'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'switching_profile_type'] = opts[:'switching_profile_type'] if !opts[:'switching_profile_type'].nil?

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
        :return_type => 'SwitchingProfilesListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiLogicalSwitchingSwitchingProfilesApi#list_switching_profiles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a Switching Profile
    # Updates the user-configurable parameters of a switching profile. Only the qos, port-mirroring, spoof-guard and port-security switching profiles can be modified. You cannot modify the ipfix or ip-discovery switching profiles. 
    # @param switching_profile_id 
    # @param base_switching_profile 
    # @param [Hash] opts the optional parameters
    # @return [BaseSwitchingProfile]
    def update_switching_profile(switching_profile_id, base_switching_profile, opts = {})
      data, _status_code, _headers = update_switching_profile_with_http_info(switching_profile_id, base_switching_profile, opts)
      data
    end

    # Update a Switching Profile
    # Updates the user-configurable parameters of a switching profile. Only the qos, port-mirroring, spoof-guard and port-security switching profiles can be modified. You cannot modify the ipfix or ip-discovery switching profiles. 
    # @param switching_profile_id 
    # @param base_switching_profile 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BaseSwitchingProfile, Fixnum, Hash)>] BaseSwitchingProfile data, response status code and response headers
    def update_switching_profile_with_http_info(switching_profile_id, base_switching_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiLogicalSwitchingSwitchingProfilesApi.update_switching_profile ...'
      end
      # verify the required parameter 'switching_profile_id' is set
      if @api_client.config.client_side_validation && switching_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'switching_profile_id' when calling ManagementPlaneApiLogicalSwitchingSwitchingProfilesApi.update_switching_profile"
      end
      # verify the required parameter 'base_switching_profile' is set
      if @api_client.config.client_side_validation && base_switching_profile.nil?
        fail ArgumentError, "Missing the required parameter 'base_switching_profile' when calling ManagementPlaneApiLogicalSwitchingSwitchingProfilesApi.update_switching_profile"
      end
      # resource path
      local_var_path = '/switching-profiles/{switching-profile-id}'.sub('{' + 'switching-profile-id' + '}', switching_profile_id.to_s)

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
      post_body = @api_client.object_to_http_body(base_switching_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BaseSwitchingProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiLogicalSwitchingSwitchingProfilesApi#update_switching_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
