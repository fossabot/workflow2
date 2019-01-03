#
# Autogenerated by Thrift Compiler (0.11.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'
require File.join File.dirname(__FILE__), 'mobile_types'
require File.join File.dirname(__FILE__), 'custom_id_types'
require File.join File.dirname(__FILE__), 'new_person_data_types'
require File.join File.dirname(__FILE__), 'audience_types'
require File.join File.dirname(__FILE__), 'spruce_types'
require File.join File.dirname(__FILE__), 'pii_integration_types'


module Liveramp
  module S2SDistributionLib
    module Soa
      class DistributionIdentifier < ::Thrift::Union; end

      class DistributionFieldValue < ::Thrift::Union; end

      class DistributionFieldLogMetadata; end

      class DistributionFieldMetadata; end

      class DistributionField; end

      class DistributionEntityLogMetadata; end

      class DistributionEntityMetadata; end

      class DistributionEntity; end

      class DistributionRecord; end

      class DistributionFieldList; end

      class TransformedIdentifiersByName; end

      class DistributionIdentifier < ::Thrift::Union
        include ::Thrift::Struct_Union
        class << self
          def cookie_id(val)
            DistributionIdentifier.new(:cookie_id, val)
          end

          def muid(val)
            DistributionIdentifier.new(:muid, val)
          end

          def custom_id(val)
            DistributionIdentifier.new(:custom_id, val)
          end

          def heid(val)
            DistributionIdentifier.new(:heid, val)
          end

          def lrcid(val)
            DistributionIdentifier.new(:lrcid, val)
          end

          def raw_string(val)
            DistributionIdentifier.new(:raw_string, val)
          end

          def pii(val)
            DistributionIdentifier.new(:pii, val)
          end

          def encrypted_hashed_pii(val)
            DistributionIdentifier.new(:encrypted_hashed_pii, val)
          end
        end

        COOKIE_ID = 1
        MUID = 2
        CUSTOM_ID = 3
        HEID = 4
        LRCID = 6
        RAW_STRING = 7
        PII = 8
        ENCRYPTED_HASHED_PII = 9

        FIELDS = {
          COOKIE_ID => {:type => ::Thrift::Types::STRING, :name => 'cookie_id', :binary => true, :optional => true},
          MUID => {:type => ::Thrift::Types::STRUCT, :name => 'muid', :class => ::Liveramp::Types::Mobile::MUID, :optional => true},
          CUSTOM_ID => {:type => ::Thrift::Types::STRUCT, :name => 'custom_id', :class => ::Liveramp::Types::CustomId::CustomId, :optional => true},
          HEID => {:type => ::Thrift::Types::STRING, :name => 'heid', :binary => true, :optional => true},
          # LiveRamp internal id for partners that provide their own external custom id
          LRCID => {:type => ::Thrift::Types::STRING, :name => 'lrcid', :binary => true, :optional => true},
          RAW_STRING => {:type => ::Thrift::Types::STRING, :name => 'raw_string', :optional => true},
          PII => {:type => ::Thrift::Types::STRUCT, :name => 'pii', :class => ::Liveramp::Types::PiiIntegration::EHPii, :optional => true},
          ENCRYPTED_HASHED_PII => {:type => ::Thrift::Types::STRUCT, :name => 'encrypted_hashed_pii', :class => ::Liveramp::Types::PiiIntegration::EncryptedHashedPii, :optional => true}
        }

        def struct_fields; FIELDS; end

        def validate
          raise(StandardError, 'Union fields are not set.') if get_set_field.nil? || get_value.nil?
        end

        ::Thrift::Union.generate_accessors self
      end

      class DistributionFieldValue < ::Thrift::Union
        include ::Thrift::Struct_Union
        class << self
          def boolean_value(val)
            DistributionFieldValue.new(:boolean_value, val)
          end

          def string_value(val)
            DistributionFieldValue.new(:string_value, val)
          end

          def long_value(val)
            DistributionFieldValue.new(:long_value, val)
          end

          def double_value(val)
            DistributionFieldValue.new(:double_value, val)
          end

          def enum_id(val)
            DistributionFieldValue.new(:enum_id, val)
          end

          def partner_device_id(val)
            DistributionFieldValue.new(:partner_device_id, val)
          end
        end

        BOOLEAN_VALUE = 1
        STRING_VALUE = 2
        LONG_VALUE = 3
        DOUBLE_VALUE = 4
        ENUM_ID = 5
        PARTNER_DEVICE_ID = 6

        FIELDS = {
          BOOLEAN_VALUE => {:type => ::Thrift::Types::BOOL, :name => 'boolean_value', :optional => true},
          STRING_VALUE => {:type => ::Thrift::Types::STRING, :name => 'string_value', :optional => true},
          LONG_VALUE => {:type => ::Thrift::Types::I64, :name => 'long_value', :optional => true},
          DOUBLE_VALUE => {:type => ::Thrift::Types::DOUBLE, :name => 'double_value', :optional => true},
          ENUM_ID => {:type => ::Thrift::Types::I32, :name => 'enum_id', :optional => true},
          PARTNER_DEVICE_ID => {:type => ::Thrift::Types::STRUCT, :name => 'partner_device_id', :class => ::Rapleaf::Types::NewPersonData::PartnerDeviceId, :optional => true}
        }

        def struct_fields; FIELDS; end

        def validate
          raise(StandardError, 'Union fields are not set.') if get_set_field.nil? || get_value.nil?
        end

        ::Thrift::Union.generate_accessors self
      end

      # Metadata needed only to be passed to the logs.
      class DistributionFieldLogMetadata
        include ::Thrift::Struct, ::Thrift::Struct_Union
        AUDIENCE_ID = 1
        VERSION_NUMBER = 2
        HASHED_AUDIENCE_KEY = 3

        FIELDS = {
          AUDIENCE_ID => {:type => ::Thrift::Types::I64, :name => 'audience_id', :optional => true},
          VERSION_NUMBER => {:type => ::Thrift::Types::I32, :name => 'version_number', :optional => true},
          HASHED_AUDIENCE_KEY => {:type => ::Thrift::Types::STRING, :name => 'hashed_audience_key', :binary => true, :optional => true}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class DistributionFieldMetadata
        include ::Thrift::Struct, ::Thrift::Struct_Union
        METADATA_BY_NAME = 1
        LOG_METADATA = 3

        FIELDS = {
          METADATA_BY_NAME => {:type => ::Thrift::Types::MAP, :name => 'metadata_by_name', :key => {:type => ::Thrift::Types::STRING}, :value => {:type => ::Thrift::Types::STRING}},
          LOG_METADATA => {:type => ::Thrift::Types::STRUCT, :name => 'log_metadata', :class => ::Liveramp::S2SDistributionLib::Soa::DistributionFieldLogMetadata, :optional => true}
        }

        def struct_fields; FIELDS; end

        def validate
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field metadata_by_name is unset!') unless @metadata_by_name
        end

        ::Thrift::Struct.generate_accessors self
      end

      class DistributionField
        include ::Thrift::Struct, ::Thrift::Struct_Union
        ID = 1
        VALUE = 2
        METADATA = 3

        FIELDS = {
          # This is the identifier for the field.  This should match an id in the field_formats_and_field_id submitted to dist.
# If the id here is not in that map, the field will be ignored when formatting.
# This can be an LrcFieldDefinition id, but it doesn’t have to be.
          ID => {:type => ::Thrift::Types::I32, :name => 'id'},
          # The data associated with this field.
          VALUE => {:type => ::Thrift::Types::STRUCT, :name => 'value', :class => ::Liveramp::S2SDistributionLib::Soa::DistributionFieldValue},
          METADATA => {:type => ::Thrift::Types::STRUCT, :name => 'metadata', :class => ::Liveramp::S2SDistributionLib::Soa::DistributionFieldMetadata, :optional => true}
        }

        def struct_fields; FIELDS; end

        def validate
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field id is unset!') unless @id
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field value is unset!') unless @value
        end

        ::Thrift::Struct.generate_accessors self
      end

      # Metadata needed only to be passed to the logs.
      class DistributionEntityLogMetadata
        include ::Thrift::Struct, ::Thrift::Struct_Union
        SUBNETWORK_ID = 2
        LIVERAMP_SOURCE = 3
        ACCEPTS_COOKIE = 4

        FIELDS = {
          # Required to get fields into the logs.
# Required to get heid_by_subnetwork_id into the logs.
          SUBNETWORK_ID => {:type => ::Thrift::Types::I64, :name => 'subnetwork_id', :optional => true},
          # Required to get heid_by_subnetwork_id into the logs.
          LIVERAMP_SOURCE => {:type => ::Thrift::Types::I32, :name => 'liveramp_source', :optional => true, :enum_class => ::Rapleaf::Types::Spruce::LiveRampDeviceIdSource},
          # Required to get accepts_cookie into the logs.
          ACCEPTS_COOKIE => {:type => ::Thrift::Types::BOOL, :name => 'accepts_cookie', :optional => true}
        }

        def struct_fields; FIELDS; end

        def validate
          unless @liveramp_source.nil? || ::Rapleaf::Types::Spruce::LiveRampDeviceIdSource::VALID_VALUES.include?(@liveramp_source)
            raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field liveramp_source!')
          end
        end

        ::Thrift::Struct.generate_accessors self
      end

      class DistributionEntityMetadata
        include ::Thrift::Struct, ::Thrift::Struct_Union
        METADATA_BY_NAME = 1
        LOG_METADATA = 2

        FIELDS = {
          METADATA_BY_NAME => {:type => ::Thrift::Types::MAP, :name => 'metadata_by_name', :key => {:type => ::Thrift::Types::STRING}, :value => {:type => ::Thrift::Types::STRING}},
          LOG_METADATA => {:type => ::Thrift::Types::STRUCT, :name => 'log_metadata', :class => ::Liveramp::S2SDistributionLib::Soa::DistributionEntityLogMetadata, :optional => true}
        }

        def struct_fields; FIELDS; end

        def validate
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field metadata_by_name is unset!') unless @metadata_by_name
        end

        ::Thrift::Struct.generate_accessors self
      end

      # Represents a single device or household.
      class DistributionEntity
        include ::Thrift::Struct, ::Thrift::Struct_Union
        IDENTIFIERS_BY_NAME = 1
        METADATA = 2

        FIELDS = {
          IDENTIFIERS_BY_NAME => {:type => ::Thrift::Types::MAP, :name => 'identifiers_by_name', :key => {:type => ::Thrift::Types::STRING}, :value => {:type => ::Thrift::Types::STRUCT, :class => ::Liveramp::S2SDistributionLib::Soa::DistributionIdentifier}},
          METADATA => {:type => ::Thrift::Types::STRUCT, :name => 'metadata', :class => ::Liveramp::S2SDistributionLib::Soa::DistributionEntityMetadata}
        }

        def struct_fields; FIELDS; end

        def validate
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field identifiers_by_name is unset!') unless @identifiers_by_name
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field metadata is unset!') unless @metadata
        end

        ::Thrift::Struct.generate_accessors self
      end

      class DistributionRecord
        include ::Thrift::Struct, ::Thrift::Struct_Union
        FIELDS = 2
        ENTITIES = 4

        FIELDS = {
          FIELDS => {:type => ::Thrift::Types::LIST, :name => 'fields', :element => {:type => ::Thrift::Types::STRUCT, :class => ::Liveramp::S2SDistributionLib::Soa::DistributionField}},
          # Most use cases should only have one entity.
# However, some destinations want identifiers associated with segments, which is when we have multiple entities.
          ENTITIES => {:type => ::Thrift::Types::LIST, :name => 'entities', :element => {:type => ::Thrift::Types::STRUCT, :class => ::Liveramp::S2SDistributionLib::Soa::DistributionEntity}}
        }

        def struct_fields; FIELDS; end

        def validate
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field fields is unset!') unless @fields
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field entities is unset!') unless @entities
        end

        ::Thrift::Struct.generate_accessors self
      end

      # Used internally.
      class DistributionFieldList
        include ::Thrift::Struct, ::Thrift::Struct_Union
        FIELDS = 1

        FIELDS = {
          FIELDS => {:type => ::Thrift::Types::LIST, :name => 'fields', :element => {:type => ::Thrift::Types::STRUCT, :class => ::Liveramp::S2SDistributionLib::Soa::DistributionField}}
        }

        def struct_fields; FIELDS; end

        def validate
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field fields is unset!') unless @fields
        end

        ::Thrift::Struct.generate_accessors self
      end

      # Used internally.
      class TransformedIdentifiersByName
        include ::Thrift::Struct, ::Thrift::Struct_Union
        IDENTIFIERS = 1

        FIELDS = {
          IDENTIFIERS => {:type => ::Thrift::Types::LIST, :name => 'identifiers', :element => {:type => ::Thrift::Types::MAP, :key => {:type => ::Thrift::Types::STRING}, :value => {:type => ::Thrift::Types::STRING}}}
        }

        def struct_fields; FIELDS; end

        def validate
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field identifiers is unset!') unless @identifiers
        end

        ::Thrift::Struct.generate_accessors self
      end

    end
  end
end