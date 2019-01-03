#
# Autogenerated by Thrift Compiler (0.11.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'
require File.join File.dirname(__FILE__), 'new_person_data_types'


module Liveramp
  module AcxiomAPI
    module InvalidType
      N_AS_ADDRESS_CITY_STATE_ZIP = 0
      FIELD_EXCEEDS_1000 = 1
      ZIP_IS_123450001 = 2
      ZIP_ENDS_IN_0000 = 3
      ZIP4_OF_ZIP_ENDS_IN_0000 = 4
      NO_FIRST = 5
      NO_LAST = 6
      NEITHER_ZIP_NOR_CITY = 7
      CANNOT_DERIVE_ANY_PIN = 8
      VALUE_MAP = {0 => "N_AS_ADDRESS_CITY_STATE_ZIP", 1 => "FIELD_EXCEEDS_1000", 2 => "ZIP_IS_123450001", 3 => "ZIP_ENDS_IN_0000", 4 => "ZIP4_OF_ZIP_ENDS_IN_0000", 5 => "NO_FIRST", 6 => "NO_LAST", 7 => "NEITHER_ZIP_NOR_CITY", 8 => "CANNOT_DERIVE_ANY_PIN"}
      VALID_VALUES = Set.new([N_AS_ADDRESS_CITY_STATE_ZIP, FIELD_EXCEEDS_1000, ZIP_IS_123450001, ZIP_ENDS_IN_0000, ZIP4_OF_ZIP_ENDS_IN_0000, NO_FIRST, NO_LAST, NEITHER_ZIP_NOR_CITY, CANNOT_DERIVE_ANY_PIN]).freeze
    end

    module AcxiomMigrationStatus
      PENDING = 0
      RUNNING = 1
      NORM_COMPLETED = 2
      AB_COMPLETED = 3
      VALUE_MAP = {0 => "PENDING", 1 => "RUNNING", 2 => "NORM_COMPLETED", 3 => "AB_COMPLETED"}
      VALID_VALUES = Set.new([PENDING, RUNNING, NORM_COMPLETED, AB_COMPLETED]).freeze
    end

    class PinToAcxiomNormPin; end

    class PinToAcxiomNormPin
      include ::Thrift::Struct, ::Thrift::Struct_Union
      RAW_PIN = 1
      NORM_PIN = 2
      STATUS_CODE = 3
      INVALID_TYPE = 4

      FIELDS = {
        RAW_PIN => {:type => ::Thrift::Types::STRUCT, :name => 'raw_pin', :class => ::Rapleaf::Types::NewPersonData::PIN},
        NORM_PIN => {:type => ::Thrift::Types::STRUCT, :name => 'norm_pin', :class => ::Rapleaf::Types::NewPersonData::PIN, :optional => true},
        STATUS_CODE => {:type => ::Thrift::Types::STRING, :name => 'status_code'},
        INVALID_TYPE => {:type => ::Thrift::Types::I32, :name => 'invalid_type', :optional => true, :enum_class => ::Liveramp::AcxiomAPI::InvalidType}
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field raw_pin is unset!') unless @raw_pin
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field status_code is unset!') unless @status_code
        unless @invalid_type.nil? || ::Liveramp::AcxiomAPI::InvalidType::VALID_VALUES.include?(@invalid_type)
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field invalid_type!')
        end
      end

      ::Thrift::Struct.generate_accessors self
    end

  end
end
