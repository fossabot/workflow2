#
# Autogenerated by Thrift Compiler (0.11.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'

module Rapleaf
  module ConfigDeployer
    module AppType
      JSPRUCE = 1
      S2S_DATA_SYNCER = 2
      SPRUCE_LIB_SERVICE = 3
      STREAMING_DELIVERER = 4
      VALUE_MAP = {1 => "JSPRUCE", 2 => "S2S_DATA_SYNCER", 3 => "SPRUCE_LIB_SERVICE", 4 => "STREAMING_DELIVERER"}
      VALID_VALUES = Set.new([JSPRUCE, S2S_DATA_SYNCER, SPRUCE_LIB_SERVICE, STREAMING_DELIVERER]).freeze
    end

    module StatusType
      RUNNING = 1
      SUCCEEDED = 2
      FAILED = 3
      VALUE_MAP = {1 => "RUNNING", 2 => "SUCCEEDED", 3 => "FAILED"}
      VALID_VALUES = Set.new([RUNNING, SUCCEEDED, FAILED]).freeze
    end

    class ConfigDeployArgs; end

    class ConfigDeployStatus; end

    class InvalidAppTypeException < ::Thrift::Exception; end

    class ConfigDeployArgs
      include ::Thrift::Struct, ::Thrift::Struct_Union
      SNAPSHOT_ID = 1
      DESIRED_APPS = 2
      STAGING_ONLY = 3
      REQUESTED_BY = 4

      FIELDS = {
        SNAPSHOT_ID => {:type => ::Thrift::Types::I32, :name => 'snapshot_id', :optional => true},
        DESIRED_APPS => {:type => ::Thrift::Types::LIST, :name => 'desired_apps', :element => {:type => ::Thrift::Types::I32, :enum_class => ::Rapleaf::ConfigDeployer::AppType}, :optional => true},
        STAGING_ONLY => {:type => ::Thrift::Types::BOOL, :name => 'staging_only', :optional => true},
        REQUESTED_BY => {:type => ::Thrift::Types::I32, :name => 'requested_by', :optional => true}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class ConfigDeployStatus
      include ::Thrift::Struct, ::Thrift::Struct_Union
      SNAPSHOT_ID = 1
      STATUS_TYPE = 2
      MESSAGE = 3
      TIMESTAMP = 4

      FIELDS = {
        SNAPSHOT_ID => {:type => ::Thrift::Types::I32, :name => 'snapshot_id'},
        STATUS_TYPE => {:type => ::Thrift::Types::I32, :name => 'status_type', :enum_class => ::Rapleaf::ConfigDeployer::StatusType},
        MESSAGE => {:type => ::Thrift::Types::STRING, :name => 'message'},
        TIMESTAMP => {:type => ::Thrift::Types::I32, :name => 'timestamp'}
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field snapshot_id is unset!') unless @snapshot_id
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field status_type is unset!') unless @status_type
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field message is unset!') unless @message
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field timestamp is unset!') unless @timestamp
        unless @status_type.nil? || ::Rapleaf::ConfigDeployer::StatusType::VALID_VALUES.include?(@status_type)
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field status_type!')
        end
      end

      ::Thrift::Struct.generate_accessors self
    end

    class InvalidAppTypeException < ::Thrift::Exception
      include ::Thrift::Struct, ::Thrift::Struct_Union
      def initialize(message=nil)
        super()
        self.message = message
      end

      MESSAGE = 1

      FIELDS = {
        MESSAGE => {:type => ::Thrift::Types::STRING, :name => 'message'}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

  end
end