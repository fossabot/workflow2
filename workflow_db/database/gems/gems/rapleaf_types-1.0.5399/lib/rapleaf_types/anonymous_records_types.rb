#
# Autogenerated by Thrift Compiler (0.11.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'
require File.join File.dirname(__FILE__), 'online_data_types'
require File.join File.dirname(__FILE__), 'new_person_data_types'
require File.join File.dirname(__FILE__), 'bang_types'
require File.join File.dirname(__FILE__), 'audience_types'


module Rapleaf
  module Types
    module AnonymousRecords
      module AnonymousKeyType
        DEFAULT_AUDIENCE_KEY = 1
        PEL = 2
        VALUE_MAP = {1 => "DEFAULT_AUDIENCE_KEY", 2 => "PEL"}
        VALID_VALUES = Set.new([DEFAULT_AUDIENCE_KEY, PEL]).freeze
      end

      module AnonymousKeyEncoding
        PLAINTEXT = 1
        DEFAULT_AUDIENCE_KEY_ENCODING = 2
        VALUE_MAP = {1 => "PLAINTEXT", 2 => "DEFAULT_AUDIENCE_KEY_ENCODING"}
        VALID_VALUES = Set.new([PLAINTEXT, DEFAULT_AUDIENCE_KEY_ENCODING]).freeze
      end

      module AudienceWhitelistType
        ANONYMOUS_ID_KEYED = 1
        ANONYMOUS_ID_FINISHED_SORTING = 2
        USE_TYPED_SOURCE_CACHE = 3
        CONTAINS_ENCRYPTED_HASHED_PII = 4
        SUS_CUSTOMER_BLACKLIST = 5
        USE_DERIVED_FIELD_SERVICE_OUTPUT = 7
        VALUE_MAP = {1 => "ANONYMOUS_ID_KEYED", 2 => "ANONYMOUS_ID_FINISHED_SORTING", 3 => "USE_TYPED_SOURCE_CACHE", 4 => "CONTAINS_ENCRYPTED_HASHED_PII", 5 => "SUS_CUSTOMER_BLACKLIST", 7 => "USE_DERIVED_FIELD_SERVICE_OUTPUT"}
        VALID_VALUES = Set.new([ANONYMOUS_ID_KEYED, ANONYMOUS_ID_FINISHED_SORTING, USE_TYPED_SOURCE_CACHE, CONTAINS_ENCRYPTED_HASHED_PII, SUS_CUSTOMER_BLACKLIST, USE_DERIVED_FIELD_SERVICE_OUTPUT]).freeze
      end

      class AnonymousKey; end

      class ARCSource; end

      class OptOutFlag; end

      class TruncationFlag; end

      class DeleteRecordMetadata; end

      class DeleteFieldByIdMetadata; end

      class DeleteFieldByValueMetadata; end

      class MetaUnion < ::Thrift::Union; end

      class AnonymousRecordMetadata; end

      class AudienceKeyPel; end

      class AnonymousIdentifierMetadata < ::Thrift::Union; end

      class ImportAnonIdentifier; end

      class ImportPii; end

      class CollectionId < ::Thrift::Union; end

      class Version < ::Thrift::Union; end

      class AnonymousRecord; end

      class AudienceCompilerQaFailureException < ::Thrift::Exception; end

      class PemapEdge; end

      class OfflineEdge; end

      class OfflineKeyAndEdge; end

      class WaterfallDerivation; end

      class AnonymousKey
        include ::Thrift::Struct, ::Thrift::Struct_Union
        KEY_VALUE = 1
        TYPE = 2
        ENCODING = 3

        FIELDS = {
          KEY_VALUE => {:type => ::Thrift::Types::STRING, :name => 'key_value', :binary => true},
          TYPE => {:type => ::Thrift::Types::I32, :name => 'type', :enum_class => ::Rapleaf::Types::AnonymousRecords::AnonymousKeyType},
          ENCODING => {:type => ::Thrift::Types::I32, :name => 'encoding', :enum_class => ::Rapleaf::Types::AnonymousRecords::AnonymousKeyEncoding}
        }

        def struct_fields; FIELDS; end

        def validate
          unless @type.nil? || ::Rapleaf::Types::AnonymousRecords::AnonymousKeyType::VALID_VALUES.include?(@type)
            raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field type!')
          end
          unless @encoding.nil? || ::Rapleaf::Types::AnonymousRecords::AnonymousKeyEncoding::VALID_VALUES.include?(@encoding)
            raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field encoding!')
          end
        end

        ::Thrift::Struct.generate_accessors self
      end

      class ARCSource
        include ::Thrift::Struct, ::Thrift::Struct_Union
        ID = 1
        FILE_INDEX = 2
        LINE_NUMBER = 3

        FIELDS = {
          ID => {:type => ::Thrift::Types::I64, :name => 'id'},
          FILE_INDEX => {:type => ::Thrift::Types::I32, :name => 'file_index'},
          LINE_NUMBER => {:type => ::Thrift::Types::I64, :name => 'line_number'}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class OptOutFlag
        include ::Thrift::Struct, ::Thrift::Struct_Union
        IS_OPT_OUT = 1

        FIELDS = {
          IS_OPT_OUT => {:type => ::Thrift::Types::BOOL, :name => 'is_opt_out'}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class TruncationFlag
        include ::Thrift::Struct, ::Thrift::Struct_Union
        IS_TRUNCATED = 1

        FIELDS = {
          IS_TRUNCATED => {:type => ::Thrift::Types::BOOL, :name => 'is_truncated'}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class DeleteRecordMetadata
        include ::Thrift::Struct, ::Thrift::Struct_Union
        IS_DELETE_MEMBER_TYPE = 1

        FIELDS = {
          IS_DELETE_MEMBER_TYPE => {:type => ::Thrift::Types::BOOL, :name => 'is_delete_member_type'}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class DeleteFieldByIdMetadata
        include ::Thrift::Struct, ::Thrift::Struct_Union
        FIELD_ID = 1

        FIELDS = {
          FIELD_ID => {:type => ::Thrift::Types::I32, :name => 'field_id'}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class DeleteFieldByValueMetadata
        include ::Thrift::Struct, ::Thrift::Struct_Union
        FIELD_ID = 1
        FIELD_VALUES = 2

        FIELDS = {
          FIELD_ID => {:type => ::Thrift::Types::I32, :name => 'field_id'},
          FIELD_VALUES => {:type => ::Thrift::Types::SET, :name => 'field_values', :element => {:type => ::Thrift::Types::STRUCT, :class => ::Rapleaf::Types::NewPersonData::LRCFieldValue}}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class MetaUnion < ::Thrift::Union
        include ::Thrift::Struct_Union
        class << self
          def opt_out(val)
            MetaUnion.new(:opt_out, val)
          end

          def truncated(val)
            MetaUnion.new(:truncated, val)
          end

          def delete_record(val)
            MetaUnion.new(:delete_record, val)
          end

          def delete_field_by_id(val)
            MetaUnion.new(:delete_field_by_id, val)
          end

          def delete_field_by_value(val)
            MetaUnion.new(:delete_field_by_value, val)
          end
        end

        OPT_OUT = 1
        TRUNCATED = 3
        DELETE_RECORD = 4
        DELETE_FIELD_BY_ID = 5
        DELETE_FIELD_BY_VALUE = 6

        FIELDS = {
          OPT_OUT => {:type => ::Thrift::Types::STRUCT, :name => 'opt_out', :class => ::Rapleaf::Types::AnonymousRecords::OptOutFlag, :optional => true},
          TRUNCATED => {:type => ::Thrift::Types::STRUCT, :name => 'truncated', :class => ::Rapleaf::Types::AnonymousRecords::TruncationFlag, :optional => true},
          DELETE_RECORD => {:type => ::Thrift::Types::STRUCT, :name => 'delete_record', :class => ::Rapleaf::Types::AnonymousRecords::DeleteRecordMetadata, :optional => true},
          DELETE_FIELD_BY_ID => {:type => ::Thrift::Types::STRUCT, :name => 'delete_field_by_id', :class => ::Rapleaf::Types::AnonymousRecords::DeleteFieldByIdMetadata, :optional => true},
          DELETE_FIELD_BY_VALUE => {:type => ::Thrift::Types::STRUCT, :name => 'delete_field_by_value', :class => ::Rapleaf::Types::AnonymousRecords::DeleteFieldByValueMetadata, :optional => true}
        }

        def struct_fields; FIELDS; end

        def validate
          raise(StandardError, 'Union fields are not set.') if get_set_field.nil? || get_value.nil?
        end

        ::Thrift::Union.generate_accessors self
      end

      class AnonymousRecordMetadata
        include ::Thrift::Struct, ::Thrift::Struct_Union
        META_VALUE = 1
        SOURCE = 2

        FIELDS = {
          META_VALUE => {:type => ::Thrift::Types::STRUCT, :name => 'meta_value', :class => ::Rapleaf::Types::AnonymousRecords::MetaUnion},
          SOURCE => {:type => ::Thrift::Types::STRUCT, :name => 'source', :class => ::Rapleaf::Types::AnonymousRecords::ARCSource}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class AudienceKeyPel
        include ::Thrift::Struct, ::Thrift::Struct_Union

        FIELDS = {

        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class AnonymousIdentifierMetadata < ::Thrift::Union
        include ::Thrift::Struct_Union
        class << self
          def audience_key_pel(val)
            AnonymousIdentifierMetadata.new(:audience_key_pel, val)
          end
        end

        AUDIENCE_KEY_PEL = 1

        FIELDS = {
          AUDIENCE_KEY_PEL => {:type => ::Thrift::Types::STRUCT, :name => 'audience_key_pel', :class => ::Rapleaf::Types::AnonymousRecords::AudienceKeyPel, :optional => true}
        }

        def struct_fields; FIELDS; end

        def validate
          raise(StandardError, 'Union fields are not set.') if get_set_field.nil? || get_value.nil?
        end

        ::Thrift::Union.generate_accessors self
      end

      class ImportAnonIdentifier
        include ::Thrift::Struct, ::Thrift::Struct_Union
        IDENTIFIER = 1
        SOURCE = 2
        ANON_IDENTIFIER_METADATAS = 3

        FIELDS = {
          IDENTIFIER => {:type => ::Thrift::Types::STRUCT, :name => 'identifier', :class => ::Liveramp::Types::Bang::AnonymousIdentifier},
          SOURCE => {:type => ::Thrift::Types::STRUCT, :name => 'source', :class => ::Rapleaf::Types::AnonymousRecords::ARCSource},
          ANON_IDENTIFIER_METADATAS => {:type => ::Thrift::Types::SET, :name => 'anon_identifier_metadatas', :element => {:type => ::Thrift::Types::STRUCT, :class => ::Rapleaf::Types::AnonymousRecords::AnonymousIdentifierMetadata}, :optional => true}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class ImportPii
        include ::Thrift::Struct, ::Thrift::Struct_Union
        PIN = 1
        SOURCE = 2

        FIELDS = {
          PIN => {:type => ::Thrift::Types::STRUCT, :name => 'pin', :class => ::Rapleaf::Types::NewPersonData::PIN},
          SOURCE => {:type => ::Thrift::Types::STRUCT, :name => 'source', :class => ::Rapleaf::Types::AnonymousRecords::ARCSource}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class CollectionId < ::Thrift::Union
        include ::Thrift::Struct_Union
        class << self
          def audienceId(val)
            CollectionId.new(:audienceId, val)
          end

          def arcId(val)
            CollectionId.new(:arcId, val)
          end
        end

        AUDIENCEID = 1
        ARCID = 2

        FIELDS = {
          AUDIENCEID => {:type => ::Thrift::Types::I64, :name => 'audienceId', :optional => true},
          ARCID => {:type => ::Thrift::Types::I64, :name => 'arcId', :optional => true}
        }

        def struct_fields; FIELDS; end

        def validate
          raise(StandardError, 'Union fields are not set.') if get_set_field.nil? || get_value.nil?
        end

        ::Thrift::Union.generate_accessors self
      end

      class Version < ::Thrift::Union
        include ::Thrift::Struct_Union
        class << self
          def audienceVersion(val)
            Version.new(:audienceVersion, val)
          end

          def arcVersion(val)
            Version.new(:arcVersion, val)
          end
        end

        AUDIENCEVERSION = 1
        ARCVERSION = 2

        FIELDS = {
          AUDIENCEVERSION => {:type => ::Thrift::Types::I32, :name => 'audienceVersion', :optional => true},
          ARCVERSION => {:type => ::Thrift::Types::I32, :name => 'arcVersion', :optional => true}
        }

        def struct_fields; FIELDS; end

        def validate
          raise(StandardError, 'Union fields are not set.') if get_set_field.nil? || get_value.nil?
        end

        ::Thrift::Union.generate_accessors self
      end

      class AnonymousRecord
        include ::Thrift::Struct, ::Thrift::Struct_Union
        COLLECTIONID = 1
        VERSION = 2
        KEY = 3
        FIELDS = 4
        MEMBER_ID = 5
        IDENTIFIERS = 6
        METADATA = 7

        FIELDS = {
          COLLECTIONID => {:type => ::Thrift::Types::STRUCT, :name => 'collectionId', :class => ::Rapleaf::Types::AnonymousRecords::CollectionId},
          VERSION => {:type => ::Thrift::Types::STRUCT, :name => 'version', :class => ::Rapleaf::Types::AnonymousRecords::Version},
          KEY => {:type => ::Thrift::Types::STRUCT, :name => 'key', :class => ::Rapleaf::Types::AnonymousRecords::AnonymousKey},
          FIELDS => {:type => ::Thrift::Types::SET, :name => 'fields', :element => {:type => ::Thrift::Types::STRUCT, :class => ::Rapleaf::Types::NewPersonData::LRCField}},
          MEMBER_ID => {:type => ::Thrift::Types::STRING, :name => 'member_id', :binary => true},
          IDENTIFIERS => {:type => ::Thrift::Types::SET, :name => 'identifiers', :element => {:type => ::Thrift::Types::STRUCT, :class => ::Rapleaf::Types::AnonymousRecords::ImportAnonIdentifier}},
          METADATA => {:type => ::Thrift::Types::SET, :name => 'metadata', :element => {:type => ::Thrift::Types::STRUCT, :class => ::Rapleaf::Types::AnonymousRecords::AnonymousRecordMetadata}}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class AudienceCompilerQaFailureException < ::Thrift::Exception
        include ::Thrift::Struct, ::Thrift::Struct_Union
        def initialize(message=nil)
          super()
          self.failureReason = message
        end

        def message; failureReason end

        FAILUREREASON = 1

        FIELDS = {
          FAILUREREASON => {:type => ::Thrift::Types::STRING, :name => 'failureReason'}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class PemapEdge
        include ::Thrift::Struct, ::Thrift::Struct_Union
        EDGE = 1
        AUDIENCE = 2
        PRECISION = 3

        FIELDS = {
          EDGE => {:type => ::Thrift::Types::STRUCT, :name => 'edge', :class => ::Liveramp::Types::Bang::BangEdge},
          AUDIENCE => {:type => ::Thrift::Types::I64, :name => 'audience', :optional => true},
          PRECISION => {:type => ::Thrift::Types::I32, :name => 'precision', :enum_class => ::Liveramp::Audience::PrecisionLevel}
        }

        def struct_fields; FIELDS; end

        def validate
          unless @precision.nil? || ::Liveramp::Audience::PrecisionLevel::VALID_VALUES.include?(@precision)
            raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field precision!')
          end
        end

        ::Thrift::Struct.generate_accessors self
      end

      class OfflineEdge
        include ::Thrift::Struct, ::Thrift::Struct_Union
        SOURCE = 1
        TARGET = 2
        SOURCE_PIN = 3
        TARGET_PIN = 4
        AUDIENCE = 5
        SOURCE_PRECISION = 6
        TARGET_PRECISION = 7

        FIELDS = {
          SOURCE => {:type => ::Thrift::Types::STRUCT, :name => 'source', :class => ::Liveramp::Types::Bang::AnonymousIdentifier, :optional => true},
          TARGET => {:type => ::Thrift::Types::STRUCT, :name => 'target', :class => ::Liveramp::Types::Bang::AnonymousIdentifier, :optional => true},
          SOURCE_PIN => {:type => ::Thrift::Types::STRUCT, :name => 'source_pin', :class => ::Rapleaf::Types::NewPersonData::PIN, :optional => true},
          TARGET_PIN => {:type => ::Thrift::Types::STRUCT, :name => 'target_pin', :class => ::Rapleaf::Types::NewPersonData::PIN, :optional => true},
          AUDIENCE => {:type => ::Thrift::Types::I64, :name => 'audience', :optional => true},
          SOURCE_PRECISION => {:type => ::Thrift::Types::I32, :name => 'source_precision', :optional => true, :enum_class => ::Liveramp::Audience::PrecisionLevel},
          TARGET_PRECISION => {:type => ::Thrift::Types::I32, :name => 'target_precision', :optional => true, :enum_class => ::Liveramp::Audience::PrecisionLevel}
        }

        def struct_fields; FIELDS; end

        def validate
          unless @source_precision.nil? || ::Liveramp::Audience::PrecisionLevel::VALID_VALUES.include?(@source_precision)
            raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field source_precision!')
          end
          unless @target_precision.nil? || ::Liveramp::Audience::PrecisionLevel::VALID_VALUES.include?(@target_precision)
            raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field target_precision!')
          end
        end

        ::Thrift::Struct.generate_accessors self
      end

      class OfflineKeyAndEdge
        include ::Thrift::Struct, ::Thrift::Struct_Union
        KEY = 1
        EDGE = 2

        FIELDS = {
          KEY => {:type => ::Thrift::Types::STRING, :name => 'key', :binary => true},
          EDGE => {:type => ::Thrift::Types::STRUCT, :name => 'edge', :class => ::Rapleaf::Types::AnonymousRecords::OfflineEdge}
        }

        def struct_fields; FIELDS; end

        def validate
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field key is unset!') unless @key
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field edge is unset!') unless @edge
        end

        ::Thrift::Struct.generate_accessors self
      end

      class WaterfallDerivation
        include ::Thrift::Struct, ::Thrift::Struct_Union
        KEY = 1
        AUDIENCE = 2
        IDENTIFIER = 3
        PRECISION = 4

        FIELDS = {
          KEY => {:type => ::Thrift::Types::STRUCT, :name => 'key', :class => ::Rapleaf::Types::AnonymousRecords::AnonymousKey},
          AUDIENCE => {:type => ::Thrift::Types::I64, :name => 'audience'},
          IDENTIFIER => {:type => ::Thrift::Types::STRUCT, :name => 'identifier', :class => ::Liveramp::Types::Bang::AnonymousIdentifier},
          PRECISION => {:type => ::Thrift::Types::I32, :name => 'precision', :enum_class => ::Liveramp::Audience::PrecisionLevel}
        }

        def struct_fields; FIELDS; end

        def validate
          unless @precision.nil? || ::Liveramp::Audience::PrecisionLevel::VALID_VALUES.include?(@precision)
            raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field precision!')
          end
        end

        ::Thrift::Struct.generate_accessors self
      end

    end
  end
end
