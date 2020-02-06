=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'date'

module NSXT
  class StaticRouteNextHop
    # Action to be taken on matching packets for NULL routes.
    attr_accessor :blackhole_action

    # Administrative Distance for the next hop IP
    attr_accessor :administrative_distance

    # Next Hop IP
    attr_accessor :ip_address

    # Status of bfd for this next hop where bfd_enabled = true indicate bfd is enabled for this next hop and bfd_enabled = false indicate bfd peer is disabled or not configured for this next hop.
    attr_accessor :bfd_enabled

    # Reference of logical router port to be used for next hop
    attr_accessor :logical_router_port_id

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'blackhole_action' => :'blackhole_action',
        :'administrative_distance' => :'administrative_distance',
        :'ip_address' => :'ip_address',
        :'bfd_enabled' => :'bfd_enabled',
        :'logical_router_port_id' => :'logical_router_port_id'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'blackhole_action' => :'String',
        :'administrative_distance' => :'Integer',
        :'ip_address' => :'String',
        :'bfd_enabled' => :'BOOLEAN',
        :'logical_router_port_id' => :'ResourceReference'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'blackhole_action')
        self.blackhole_action = attributes[:'blackhole_action']
      end

      if attributes.has_key?(:'administrative_distance')
        self.administrative_distance = attributes[:'administrative_distance']
      else
        self.administrative_distance = 1
      end

      if attributes.has_key?(:'ip_address')
        self.ip_address = attributes[:'ip_address']
      end

      if attributes.has_key?(:'bfd_enabled')
        self.bfd_enabled = attributes[:'bfd_enabled']
      else
        self.bfd_enabled = false
      end

      if attributes.has_key?(:'logical_router_port_id')
        self.logical_router_port_id = attributes[:'logical_router_port_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@administrative_distance.nil? && @administrative_distance > 255
        invalid_properties.push('invalid value for "administrative_distance", must be smaller than or equal to 255.')
      end

      if !@administrative_distance.nil? && @administrative_distance < 1
        invalid_properties.push('invalid value for "administrative_distance", must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      blackhole_action_validator = EnumAttributeValidator.new('String', ['DISCARD'])
      return false unless blackhole_action_validator.valid?(@blackhole_action)
      return false if !@administrative_distance.nil? && @administrative_distance > 255
      return false if !@administrative_distance.nil? && @administrative_distance < 1
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] blackhole_action Object to be assigned
    def blackhole_action=(blackhole_action)
      validator = EnumAttributeValidator.new('String', ['DISCARD'])
      unless validator.valid?(blackhole_action)
        fail ArgumentError, 'invalid value for "blackhole_action", must be one of #{validator.allowable_values}.'
      end
      @blackhole_action = blackhole_action
    end

    # Custom attribute writer method with validation
    # @param [Object] administrative_distance Value to be assigned
    def administrative_distance=(administrative_distance)
      if !administrative_distance.nil? && administrative_distance > 255
        fail ArgumentError, 'invalid value for "administrative_distance", must be smaller than or equal to 255.'
      end

      if !administrative_distance.nil? && administrative_distance < 1
        fail ArgumentError, 'invalid value for "administrative_distance", must be greater than or equal to 1.'
      end

      @administrative_distance = administrative_distance
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          blackhole_action == o.blackhole_action &&
          administrative_distance == o.administrative_distance &&
          ip_address == o.ip_address &&
          bfd_enabled == o.bfd_enabled &&
          logical_router_port_id == o.logical_router_port_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [blackhole_action, administrative_distance, ip_address, bfd_enabled, logical_router_port_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = NSXT.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
