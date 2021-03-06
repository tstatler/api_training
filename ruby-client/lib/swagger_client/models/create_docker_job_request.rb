=begin
Apcera APIs

REST APIs used to manage an Apcera cluster and its resources. 

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require 'date'

module SwaggerClient
  class CreateDockerJobRequest
    # If `true`, the job is allowed outbound network connectivity.
    attr_accessor :allow_egress

    # List of environment variables that are added to the job.
    attr_accessor :env

    # An array of ports exposed on job instances.
    attr_accessor :exposed_ports

    # Group to run Docker image as (default: picked by Apcera).
    attr_accessor :group

    # List of hard scheduling tags. See [Hard Tags](http://enterprise-docs.apcera.com/other/job-scheduling/#hard-tags) for more information.
    attr_accessor :hard_scheduling_tags

    # If `true`, volumes specified in the Docker image spec are ignored and no data will be persisted. If `false` or not specified, and the Docker image specifies volumes, then you must supply a provider FQN in the request object's `volume_provider_fqn` property.
    attr_accessor :ignore_volumes

    # Docker image URL.
    attr_accessor :image_url

    # If `true`, the start command is removed from the job definition. The start command string is saved to the `DOCKER_START_COMMAND` environment variable on the job's environment.
    attr_accessor :interactive

    # The fully-qualified name of the job to create from the Docker image.
    attr_accessor :job_fqn

    # A list of compute and network resources that the job can consume.
    attr_accessor :resources

    # Configuration related to restarting the job.
    attr_accessor :restart

    # A map of routes to the ports where the routes are available.
    attr_accessor :routes

    # List of soft scheduling tags. See [Soft Tags](http://enterprise-docs.apcera.com/other/job-scheduling/#soft-tags) for more information.
    attr_accessor :soft_scheduling_tags

    # If `true` the job is started after its created. Default is `false`.
    attr_accessor :start

    # The command used to start the process, specified as an array. The first element in the array is the command/binary to execute, and subsequent array elements are command arguments. The expanded command string is passed directly to `exec()` without shell or template interpretation.
    attr_accessor :start_command

    # The command used to stop the process, specified as an array. The first element in the array is the command/binary to execute, and subsequent array elements are command arguments. The expanded command string is passed directly to `exec()` without shell or template interpretation.
    attr_accessor :stop_command

    # User to run Docker image as. Defaults to user in the Docker image configuration, or 'root' if image doesn't have a user configured.
    attr_accessor :user

    # Volume provider's fully-qualified name. Required if `ignore_volumes` is not set to `true`.
    attr_accessor :volume_provider_fqn

    # A list of volumes used by the Docker image for persistence.
    attr_accessor :volumes

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        
        :'allow_egress' => :'allow_egress',
        
        :'env' => :'env',
        
        :'exposed_ports' => :'exposed_ports',
        
        :'group' => :'group',
        
        :'hard_scheduling_tags' => :'hard_scheduling_tags',
        
        :'ignore_volumes' => :'ignore_volumes',
        
        :'image_url' => :'image_url',
        
        :'interactive' => :'interactive',
        
        :'job_fqn' => :'job_fqn',
        
        :'resources' => :'resources',
        
        :'restart' => :'restart',
        
        :'routes' => :'routes',
        
        :'soft_scheduling_tags' => :'soft_scheduling_tags',
        
        :'start' => :'start',
        
        :'start_command' => :'start_command',
        
        :'stop_command' => :'stop_command',
        
        :'user' => :'user',
        
        :'volume_provider_fqn' => :'volume_provider_fqn',
        
        :'volumes' => :'volumes'
        
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'allow_egress' => :'BOOLEAN',
        :'env' => :'Hash<String, String>',
        :'exposed_ports' => :'Array<Integer>',
        :'group' => :'String',
        :'hard_scheduling_tags' => :'Hash<String, BOOLEAN>',
        :'ignore_volumes' => :'BOOLEAN',
        :'image_url' => :'String',
        :'interactive' => :'BOOLEAN',
        :'job_fqn' => :'String',
        :'resources' => :'Resource',
        :'restart' => :'RestartConfig',
        :'routes' => :'Hash<String, Integer>',
        :'soft_scheduling_tags' => :'Hash<String, BOOLEAN>',
        :'start' => :'BOOLEAN',
        :'start_command' => :'Array<String>',
        :'stop_command' => :'Array<String>',
        :'user' => :'String',
        :'volume_provider_fqn' => :'String',
        :'volumes' => :'Array<String>'
        
      }
    end

    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}

      
      if attributes[:'allow_egress']
        self.allow_egress = attributes[:'allow_egress']
      end
      
      if attributes[:'env']
        if (value = attributes[:'env']).is_a?(Array)
          self.env = value
        end
      end
      
      if attributes[:'exposed_ports']
        if (value = attributes[:'exposed_ports']).is_a?(Array)
          self.exposed_ports = value
        end
      end
      
      if attributes[:'group']
        self.group = attributes[:'group']
      end
      
      if attributes[:'hard_scheduling_tags']
        if (value = attributes[:'hard_scheduling_tags']).is_a?(Array)
          self.hard_scheduling_tags = value
        end
      end
      
      if attributes[:'ignore_volumes']
        self.ignore_volumes = attributes[:'ignore_volumes']
      end
      
      if attributes[:'image_url']
        self.image_url = attributes[:'image_url']
      end
      
      if attributes[:'interactive']
        self.interactive = attributes[:'interactive']
      end
      
      if attributes[:'job_fqn']
        self.job_fqn = attributes[:'job_fqn']
      end
      
      if attributes[:'resources']
        self.resources = attributes[:'resources']
      end
      
      if attributes[:'restart']
        self.restart = attributes[:'restart']
      end
      
      if attributes[:'routes']
        if (value = attributes[:'routes']).is_a?(Array)
          self.routes = value
        end
      end
      
      if attributes[:'soft_scheduling_tags']
        if (value = attributes[:'soft_scheduling_tags']).is_a?(Array)
          self.soft_scheduling_tags = value
        end
      end
      
      if attributes[:'start']
        self.start = attributes[:'start']
      end
      
      if attributes[:'start_command']
        if (value = attributes[:'start_command']).is_a?(Array)
          self.start_command = value
        end
      end
      
      if attributes[:'stop_command']
        if (value = attributes[:'stop_command']).is_a?(Array)
          self.stop_command = value
        end
      end
      
      if attributes[:'user']
        self.user = attributes[:'user']
      end
      
      if attributes[:'volume_provider_fqn']
        self.volume_provider_fqn = attributes[:'volume_provider_fqn']
      end
      
      if attributes[:'volumes']
        if (value = attributes[:'volumes']).is_a?(Array)
          self.volumes = value
        end
      end
      
    end

    # Check equality by comparing each attribute.
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          allow_egress == o.allow_egress &&
          env == o.env &&
          exposed_ports == o.exposed_ports &&
          group == o.group &&
          hard_scheduling_tags == o.hard_scheduling_tags &&
          ignore_volumes == o.ignore_volumes &&
          image_url == o.image_url &&
          interactive == o.interactive &&
          job_fqn == o.job_fqn &&
          resources == o.resources &&
          restart == o.restart &&
          routes == o.routes &&
          soft_scheduling_tags == o.soft_scheduling_tags &&
          start == o.start &&
          start_command == o.start_command &&
          stop_command == o.stop_command &&
          user == o.user &&
          volume_provider_fqn == o.volume_provider_fqn &&
          volumes == o.volumes
    end

    # @see the `==` method
    def eql?(o)
      self == o
    end

    # Calculate hash code according to all attributes.
    def hash
      [allow_egress, env, exposed_ports, group, hard_scheduling_tags, ignore_volumes, image_url, interactive, job_fqn, resources, restart, routes, soft_scheduling_tags, start, start_command, stop_command, user, volume_provider_fqn, volumes].hash
    end

    # build the object from hash
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          else
            #TODO show warning in debug mode
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        else
          # data not found in attributes(hash), not an issue as the data can be optional
        end
      end

      self
    end

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
        if value.to_s =~ /^(true|t|yes|y|1)$/i
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
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        _model = SwaggerClient.const_get(type).new
        _model.build_from_hash(value)
      end
    end

    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_body (backward compatibility))
    def to_body
      to_hash
    end

    # return the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Method to output non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
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
