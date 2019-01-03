#
# Autogenerated by Thrift Compiler (0.11.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'

module LiveRamp
  module PekService
    class PekServiceError < ::Thrift::Exception; end

    class PekExistsError < ::Thrift::Exception; end

    class KeyExportReport; end

    class PelConversionTrackingInfo; end

    class PekServiceError < ::Thrift::Exception
      include ::Thrift::Struct, ::Thrift::Struct_Union
      def initialize(message=nil)
        super()
        self.error_message = message
      end

      def message; error_message end

      ERROR_MESSAGE = 1

      FIELDS = {
        ERROR_MESSAGE => {:type => ::Thrift::Types::STRING, :name => 'error_message'}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class PekExistsError < ::Thrift::Exception
      include ::Thrift::Struct, ::Thrift::Struct_Union
      def initialize(message=nil)
        super()
        self.error_message = message
      end

      def message; error_message end

      ERROR_MESSAGE = 1

      FIELDS = {
        ERROR_MESSAGE => {:type => ::Thrift::Types::STRING, :name => 'error_message'}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class KeyExportReport
      include ::Thrift::Struct, ::Thrift::Struct_Union
      KEY_FILE = 1
      VERIFICATION_FILE = 2

      FIELDS = {
        KEY_FILE => {:type => ::Thrift::Types::STRING, :name => 'key_file'},
        VERIFICATION_FILE => {:type => ::Thrift::Types::STRING, :name => 'verification_file'}
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field key_file is unset!') unless @key_file
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field verification_file is unset!') unless @verification_file
      end

      ::Thrift::Struct.generate_accessors self
    end

    class PelConversionTrackingInfo
      include ::Thrift::Struct, ::Thrift::Struct_Union
      OUTPUT_PATH = 1
      RUN_IDENTIFIER = 2

      FIELDS = {
        OUTPUT_PATH => {:type => ::Thrift::Types::STRING, :name => 'output_path'},
        RUN_IDENTIFIER => {:type => ::Thrift::Types::STRING, :name => 'run_identifier'}
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field output_path is unset!') unless @output_path
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field run_identifier is unset!') unless @run_identifier
      end

      ::Thrift::Struct.generate_accessors self
    end

  end
end