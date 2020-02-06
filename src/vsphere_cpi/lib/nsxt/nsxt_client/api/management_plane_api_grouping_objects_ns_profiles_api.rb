=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'uri'

module NSXT
  class ManagementPlaneApiGroupingObjectsNsProfilesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create NSProfile
    # Creates a new NSProfile which allows users to encapsulate attribute and sub-attributes of network services. Rules for using attributes and sub-attributes in single NSProfile 1. One type of attribute can't have multiple occurrences. ( Example -  Attribute type APP_ID can be used only once per NSProfile.) 2. Values for an attribute are mentioned as array of strings.  ( Example - For type APP_ID , values can be mentioned as [\"SSL\",\"FTP\"].) 3. If sub-attribtes are mentioned for an attribute, then only single  value is allowed for that attribute. 4. To get a list of supported  attributes and sub-attributes fire the following REST API  GET https://&lt;nsx-mgr&gt;/api/v1/ns-profiles/attributes 
    # @param ns_profile 
    # @param [Hash] opts the optional parameters
    # @return [NSProfile]
    def create_ns_profile(ns_profile, opts = {})
      data, _status_code, _headers = create_ns_profile_with_http_info(ns_profile, opts)
      data
    end

    # Create NSProfile
    # Creates a new NSProfile which allows users to encapsulate attribute and sub-attributes of network services. Rules for using attributes and sub-attributes in single NSProfile 1. One type of attribute can&#39;t have multiple occurrences. ( Example -  Attribute type APP_ID can be used only once per NSProfile.) 2. Values for an attribute are mentioned as array of strings.  ( Example - For type APP_ID , values can be mentioned as [\&quot;SSL\&quot;,\&quot;FTP\&quot;].) 3. If sub-attribtes are mentioned for an attribute, then only single  value is allowed for that attribute. 4. To get a list of supported  attributes and sub-attributes fire the following REST API  GET https://&amp;lt;nsx-mgr&amp;gt;/api/v1/ns-profiles/attributes 
    # @param ns_profile 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NSProfile, Fixnum, Hash)>] NSProfile data, response status code and response headers
    def create_ns_profile_with_http_info(ns_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiGroupingObjectsNsProfilesApi.create_ns_profile ...'
      end
      # verify the required parameter 'ns_profile' is set
      if @api_client.config.client_side_validation && ns_profile.nil?
        fail ArgumentError, "Missing the required parameter 'ns_profile' when calling ManagementPlaneApiGroupingObjectsNsProfilesApi.create_ns_profile"
      end
      # resource path
      local_var_path = '/ns-profiles'

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
      post_body = @api_client.object_to_http_body(ns_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'NSProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiGroupingObjectsNsProfilesApi#create_ns_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete NSProfile
    # Deletes the specified NSProfile. By default, if the NSProfile is consumed in a Firewall rule, it won't get deleted. In such situations, pass \"force=true\" as query param to force delete the NSProfile. 
    # @param ns_profile_id NSProfile Id
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :force Force delete the resource even if it is being used somewhere  (default to false)
    # @return [nil]
    def delete_ns_profile(ns_profile_id, opts = {})
      delete_ns_profile_with_http_info(ns_profile_id, opts)
      nil
    end

    # Delete NSProfile
    # Deletes the specified NSProfile. By default, if the NSProfile is consumed in a Firewall rule, it won&#39;t get deleted. In such situations, pass \&quot;force&#x3D;true\&quot; as query param to force delete the NSProfile. 
    # @param ns_profile_id NSProfile Id
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :force Force delete the resource even if it is being used somewhere 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_ns_profile_with_http_info(ns_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiGroupingObjectsNsProfilesApi.delete_ns_profile ...'
      end
      # verify the required parameter 'ns_profile_id' is set
      if @api_client.config.client_side_validation && ns_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'ns_profile_id' when calling ManagementPlaneApiGroupingObjectsNsProfilesApi.delete_ns_profile"
      end
      # resource path
      local_var_path = '/ns-profiles/{ns-profile-id}'.sub('{' + 'ns-profile-id' + '}', ns_profile_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'force'] = opts[:'force'] if !opts[:'force'].nil?

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
        @api_client.config.logger.debug "API called: ManagementPlaneApiGroupingObjectsNsProfilesApi#delete_ns_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List NSProfiles
    # List the NSProfiles created in a paginated format.The page size is restricted to 50 NSProfiles, so that the size of the response remains small even when there are high number of NSProfiles with multiple attributes and multiple attribute values for each attribute. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :attribute_type Fetch NSProfiles for the given attribute type
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [NSProfileListResult]
    def list_ns_profiles(opts = {})
      data, _status_code, _headers = list_ns_profiles_with_http_info(opts)
      data
    end

    # List NSProfiles
    # List the NSProfiles created in a paginated format.The page size is restricted to 50 NSProfiles, so that the size of the response remains small even when there are high number of NSProfiles with multiple attributes and multiple attribute values for each attribute. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :attribute_type Fetch NSProfiles for the given attribute type
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(NSProfileListResult, Fixnum, Hash)>] NSProfileListResult data, response status code and response headers
    def list_ns_profiles_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiGroupingObjectsNsProfilesApi.list_ns_profiles ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiGroupingObjectsNsProfilesApi.list_ns_profiles, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiGroupingObjectsNsProfilesApi.list_ns_profiles, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/ns-profiles'

      # query parameters
      query_params = {}
      query_params[:'attribute_type'] = opts[:'attribute_type'] if !opts[:'attribute_type'].nil?
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
        :return_type => 'NSProfileListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiGroupingObjectsNsProfilesApi#list_ns_profiles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List NSProfile supported attribute and sub-attributes
    # Returns supported attribute and sub-attributes for specified attribute type with their supported values, if provided in query/request parameter, else will fetch all supported attribute and sub-attributes for all supported attribute types. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :attribute_type Fetch attributes and sub-attributes for the given attribute type
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [NSSupportedAttributesListResult]
    def list_ns_supported_attributes(opts = {})
      data, _status_code, _headers = list_ns_supported_attributes_with_http_info(opts)
      data
    end

    # List NSProfile supported attribute and sub-attributes
    # Returns supported attribute and sub-attributes for specified attribute type with their supported values, if provided in query/request parameter, else will fetch all supported attribute and sub-attributes for all supported attribute types. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :attribute_type Fetch attributes and sub-attributes for the given attribute type
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(NSSupportedAttributesListResult, Fixnum, Hash)>] NSSupportedAttributesListResult data, response status code and response headers
    def list_ns_supported_attributes_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiGroupingObjectsNsProfilesApi.list_ns_supported_attributes ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiGroupingObjectsNsProfilesApi.list_ns_supported_attributes, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiGroupingObjectsNsProfilesApi.list_ns_supported_attributes, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/ns-profiles/attributes'

      # query parameters
      query_params = {}
      query_params[:'attribute_type'] = opts[:'attribute_type'] if !opts[:'attribute_type'].nil?
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
        :return_type => 'NSSupportedAttributesListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiGroupingObjectsNsProfilesApi#list_ns_supported_attributes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List NSProfile supported attribute types
    # Returns supported attribute type strings for NSProfile. 
    # @param [Hash] opts the optional parameters
    # @return [NSSupportedAttributeTypesResult]
    def list_ns_supported_attributes_types(opts = {})
      data, _status_code, _headers = list_ns_supported_attributes_types_with_http_info(opts)
      data
    end

    # List NSProfile supported attribute types
    # Returns supported attribute type strings for NSProfile. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NSSupportedAttributeTypesResult, Fixnum, Hash)>] NSSupportedAttributeTypesResult data, response status code and response headers
    def list_ns_supported_attributes_types_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiGroupingObjectsNsProfilesApi.list_ns_supported_attributes_types ...'
      end
      # resource path
      local_var_path = '/ns-profiles/attribute-types'

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
        :return_type => 'NSSupportedAttributeTypesResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiGroupingObjectsNsProfilesApi#list_ns_supported_attributes_types\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Read NSProfile
    # Returns information about the specified NSProfile. 
    # @param ns_profile_id NSProfile Id
    # @param [Hash] opts the optional parameters
    # @return [NSProfile]
    def read_ns_profile(ns_profile_id, opts = {})
      data, _status_code, _headers = read_ns_profile_with_http_info(ns_profile_id, opts)
      data
    end

    # Read NSProfile
    # Returns information about the specified NSProfile. 
    # @param ns_profile_id NSProfile Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(NSProfile, Fixnum, Hash)>] NSProfile data, response status code and response headers
    def read_ns_profile_with_http_info(ns_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiGroupingObjectsNsProfilesApi.read_ns_profile ...'
      end
      # verify the required parameter 'ns_profile_id' is set
      if @api_client.config.client_side_validation && ns_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'ns_profile_id' when calling ManagementPlaneApiGroupingObjectsNsProfilesApi.read_ns_profile"
      end
      # resource path
      local_var_path = '/ns-profiles/{ns-profile-id}'.sub('{' + 'ns-profile-id' + '}', ns_profile_id.to_s)

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
        :return_type => 'NSProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiGroupingObjectsNsProfilesApi#read_ns_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update NSProfile
    # Updates the specified NSProfile. Rules for using attributes and sub-attributes in single NSProfile 1. One type of attribute can't have multiple occurrences. ( Example -  Attribute type APP_ID can be used only once per NSProfile.) 2. Values for an attribute are mentioned as array of strings.  ( Example - For type APP_ID , values can be mentioned as [\"SSL\",\"FTP\"].) 3. If sub-attribtes are mentioned for an attribute, then only single  value is allowed for that attribute. 4. To get a list of supported  attributes and sub-attributes fire the following REST API  GET https://&lt;nsx-mgr&gt;/api/v1/ns-profiles/attributes 
    # @param ns_profile_id NSProfile Id
    # @param ns_profile 
    # @param [Hash] opts the optional parameters
    # @return [NSProfile]
    def update_ns_profile(ns_profile_id, ns_profile, opts = {})
      data, _status_code, _headers = update_ns_profile_with_http_info(ns_profile_id, ns_profile, opts)
      data
    end

    # Update NSProfile
    # Updates the specified NSProfile. Rules for using attributes and sub-attributes in single NSProfile 1. One type of attribute can&#39;t have multiple occurrences. ( Example -  Attribute type APP_ID can be used only once per NSProfile.) 2. Values for an attribute are mentioned as array of strings.  ( Example - For type APP_ID , values can be mentioned as [\&quot;SSL\&quot;,\&quot;FTP\&quot;].) 3. If sub-attribtes are mentioned for an attribute, then only single  value is allowed for that attribute. 4. To get a list of supported  attributes and sub-attributes fire the following REST API  GET https://&amp;lt;nsx-mgr&amp;gt;/api/v1/ns-profiles/attributes 
    # @param ns_profile_id NSProfile Id
    # @param ns_profile 
    # @param [Hash] opts the optional parameters
    # @return [Array<(NSProfile, Fixnum, Hash)>] NSProfile data, response status code and response headers
    def update_ns_profile_with_http_info(ns_profile_id, ns_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiGroupingObjectsNsProfilesApi.update_ns_profile ...'
      end
      # verify the required parameter 'ns_profile_id' is set
      if @api_client.config.client_side_validation && ns_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'ns_profile_id' when calling ManagementPlaneApiGroupingObjectsNsProfilesApi.update_ns_profile"
      end
      # verify the required parameter 'ns_profile' is set
      if @api_client.config.client_side_validation && ns_profile.nil?
        fail ArgumentError, "Missing the required parameter 'ns_profile' when calling ManagementPlaneApiGroupingObjectsNsProfilesApi.update_ns_profile"
      end
      # resource path
      local_var_path = '/ns-profiles/{ns-profile-id}'.sub('{' + 'ns-profile-id' + '}', ns_profile_id.to_s)

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
      post_body = @api_client.object_to_http_body(ns_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'NSProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiGroupingObjectsNsProfilesApi#update_ns_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
