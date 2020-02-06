=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.7

=end

require 'date'

module NSXT
  # This type is used to create packet request on give node. Need to specify related parameters according to the capture point.
  class PacketCaptureRequest
    # Define the transport node to capture data.
    attr_accessor :node

    # Define the capture direction. Support three types INPUT/OUTPUT/DUAL.
    attr_accessor :direction

    # Define the packet capture duration time. After the capture duration time, the capture process will stop working.
    attr_accessor :capduration

    # Define the packet capture amount size.
    attr_accessor :capamount

    # This type is used to differenite the incoming request from CLI/UI.
    attr_accessor :capsource

    # Define the transport node to capture data.
    attr_accessor :node_ip

    # Define the capture value of given capture point.
    attr_accessor :capvalue

    # Define the capture filter type. Support PRE/POST mode.
    attr_accessor :filtertype

    # Define the point to capture data.
    attr_accessor :cappoint

    # Define the packet capture file size limit.
    attr_accessor :capfilesize

    # Define the packet capture additional options to filter the capture data.
    attr_accessor :options

    # Set the stream port to receive the capture packet. The STREAM mode is based on GRE-in-UDP Encapsulation(RFC8086). Packets are sent to UDP port 4754.
    attr_accessor :streamport

    # Define the rate of packet capture process.
    attr_accessor :caprate

    # The CPU core id on Edge node.
    attr_accessor :capcore

    # Limit the number of bytes captured from each packet.
    attr_accessor :capsnaplen

    # Set the stream address to receive the capture packet.
    attr_accessor :streamaddress

    # Define the capture streaming mode. The STREAM mode will send the data to given stream address and port. And the STANDALONE mode will save the capture file in local folder.
    attr_accessor :capmode

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
        :'node' => :'node',
        :'direction' => :'direction',
        :'capduration' => :'capduration',
        :'capamount' => :'capamount',
        :'capsource' => :'capsource',
        :'node_ip' => :'node_ip',
        :'capvalue' => :'capvalue',
        :'filtertype' => :'filtertype',
        :'cappoint' => :'cappoint',
        :'capfilesize' => :'capfilesize',
        :'options' => :'options',
        :'streamport' => :'streamport',
        :'caprate' => :'caprate',
        :'capcore' => :'capcore',
        :'capsnaplen' => :'capsnaplen',
        :'streamaddress' => :'streamaddress',
        :'capmode' => :'capmode'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'node' => :'String',
        :'direction' => :'String',
        :'capduration' => :'Integer',
        :'capamount' => :'Integer',
        :'capsource' => :'String',
        :'node_ip' => :'String',
        :'capvalue' => :'String',
        :'filtertype' => :'String',
        :'cappoint' => :'String',
        :'capfilesize' => :'Integer',
        :'options' => :'PacketCaptureOptionList',
        :'streamport' => :'Integer',
        :'caprate' => :'Integer',
        :'capcore' => :'Integer',
        :'capsnaplen' => :'Integer',
        :'streamaddress' => :'String',
        :'capmode' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'node')
        self.node = attributes[:'node']
      end

      if attributes.has_key?(:'direction')
        self.direction = attributes[:'direction']
      end

      if attributes.has_key?(:'capduration')
        self.capduration = attributes[:'capduration']
      end

      if attributes.has_key?(:'capamount')
        self.capamount = attributes[:'capamount']
      end

      if attributes.has_key?(:'capsource')
        self.capsource = attributes[:'capsource']
      end

      if attributes.has_key?(:'node_ip')
        self.node_ip = attributes[:'node_ip']
      end

      if attributes.has_key?(:'capvalue')
        self.capvalue = attributes[:'capvalue']
      end

      if attributes.has_key?(:'filtertype')
        self.filtertype = attributes[:'filtertype']
      end

      if attributes.has_key?(:'cappoint')
        self.cappoint = attributes[:'cappoint']
      end

      if attributes.has_key?(:'capfilesize')
        self.capfilesize = attributes[:'capfilesize']
      end

      if attributes.has_key?(:'options')
        self.options = attributes[:'options']
      end

      if attributes.has_key?(:'streamport')
        self.streamport = attributes[:'streamport']
      end

      if attributes.has_key?(:'caprate')
        self.caprate = attributes[:'caprate']
      end

      if attributes.has_key?(:'capcore')
        self.capcore = attributes[:'capcore']
      end

      if attributes.has_key?(:'capsnaplen')
        self.capsnaplen = attributes[:'capsnaplen']
      end

      if attributes.has_key?(:'streamaddress')
        self.streamaddress = attributes[:'streamaddress']
      end

      if attributes.has_key?(:'capmode')
        self.capmode = attributes[:'capmode']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @capsource.nil?
        invalid_properties.push('invalid value for "capsource", capsource cannot be nil.')
      end

      if @cappoint.nil?
        invalid_properties.push('invalid value for "cappoint", cappoint cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      direction_validator = EnumAttributeValidator.new('String', ['INPUT', 'OUTPUT', 'DUAL'])
      return false unless direction_validator.valid?(@direction)
      return false if @capsource.nil?
      capsource_validator = EnumAttributeValidator.new('String', ['CLI', 'UI'])
      return false unless capsource_validator.valid?(@capsource)
      filtertype_validator = EnumAttributeValidator.new('String', ['PRE', 'POST'])
      return false unless filtertype_validator.valid?(@filtertype)
      return false if @cappoint.nil?
      cappoint_validator = EnumAttributeValidator.new('String', ['VNIC', 'VMKNIC', 'VMNIC', 'VDRPORT', 'DVFILTER', 'LOGICALPORT', 'FCPORT', 'VIF', 'PNIC'])
      return false unless cappoint_validator.valid?(@cappoint)
      capmode_validator = EnumAttributeValidator.new('String', ['STANDALONE', 'STREAM'])
      return false unless capmode_validator.valid?(@capmode)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] direction Object to be assigned
    def direction=(direction)
      validator = EnumAttributeValidator.new('String', ['INPUT', 'OUTPUT', 'DUAL'])
      unless validator.valid?(direction)
        fail ArgumentError, 'invalid value for "direction", must be one of #{validator.allowable_values}.'
      end
      @direction = direction
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] capsource Object to be assigned
    def capsource=(capsource)
      validator = EnumAttributeValidator.new('String', ['CLI', 'UI'])
      unless validator.valid?(capsource)
        fail ArgumentError, 'invalid value for "capsource", must be one of #{validator.allowable_values}.'
      end
      @capsource = capsource
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] filtertype Object to be assigned
    def filtertype=(filtertype)
      validator = EnumAttributeValidator.new('String', ['PRE', 'POST'])
      unless validator.valid?(filtertype)
        fail ArgumentError, 'invalid value for "filtertype", must be one of #{validator.allowable_values}.'
      end
      @filtertype = filtertype
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cappoint Object to be assigned
    def cappoint=(cappoint)
      validator = EnumAttributeValidator.new('String', ['VNIC', 'VMKNIC', 'VMNIC', 'VDRPORT', 'DVFILTER', 'LOGICALPORT', 'FCPORT', 'VIF', 'PNIC'])
      unless validator.valid?(cappoint)
        fail ArgumentError, 'invalid value for "cappoint", must be one of #{validator.allowable_values}.'
      end
      @cappoint = cappoint
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] capmode Object to be assigned
    def capmode=(capmode)
      validator = EnumAttributeValidator.new('String', ['STANDALONE', 'STREAM'])
      unless validator.valid?(capmode)
        fail ArgumentError, 'invalid value for "capmode", must be one of #{validator.allowable_values}.'
      end
      @capmode = capmode
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          node == o.node &&
          direction == o.direction &&
          capduration == o.capduration &&
          capamount == o.capamount &&
          capsource == o.capsource &&
          node_ip == o.node_ip &&
          capvalue == o.capvalue &&
          filtertype == o.filtertype &&
          cappoint == o.cappoint &&
          capfilesize == o.capfilesize &&
          options == o.options &&
          streamport == o.streamport &&
          caprate == o.caprate &&
          capcore == o.capcore &&
          capsnaplen == o.capsnaplen &&
          streamaddress == o.streamaddress &&
          capmode == o.capmode
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [node, direction, capduration, capamount, capsource, node_ip, capvalue, filtertype, cappoint, capfilesize, options, streamport, caprate, capcore, capsnaplen, streamaddress, capmode].hash
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
