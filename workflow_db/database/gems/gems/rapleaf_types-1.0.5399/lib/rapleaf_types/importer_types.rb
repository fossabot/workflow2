#
# Autogenerated by Thrift Compiler (0.11.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'
require File.join File.dirname(__FILE__), 'enums_types'
require File.join File.dirname(__FILE__), 'new_person_data_types'


module Rapleaf
  module Types
    module Importer
      module FileFormat
        DELIMITED = 1
        FIXED_WIDTH = 2
        JSON = 3
        VALUE_MAP = {1 => "DELIMITED", 2 => "FIXED_WIDTH", 3 => "JSON"}
        VALID_VALUES = Set.new([DELIMITED, FIXED_WIDTH, JSON]).freeze
      end

      module LiveRampImportStatus
        PENDING = 10
        PROCESSING = 20
        COMPLETE_V1 = 30
        COMPLETE_V2 = 40
        WAITING_FOR_QA = 50
        PROCESSING_DATA_SYNCS = 60
        VALUE_MAP = {10 => "PENDING", 20 => "PROCESSING", 30 => "COMPLETE_V1", 40 => "COMPLETE_V2", 50 => "WAITING_FOR_QA", 60 => "PROCESSING_DATA_SYNCS"}
        VALID_VALUES = Set.new([PENDING, PROCESSING, COMPLETE_V1, COMPLETE_V2, WAITING_FOR_QA, PROCESSING_DATA_SYNCS]).freeze
      end

      module LiveRampImportUsage
        DO_NOT_USE = 0
        APPEND = 1
        REPLACE = 2
        VALUE_MAP = {0 => "DO_NOT_USE", 1 => "APPEND", 2 => "REPLACE"}
        VALID_VALUES = Set.new([DO_NOT_USE, APPEND, REPLACE]).freeze
      end

      module IrcStatCounters
        VALID_RECORD = 10
        UNMATCHED_RECORD = 20
        VALUE_MAP = {10 => "VALID_RECORD", 20 => "UNMATCHED_RECORD"}
        VALID_VALUES = Set.new([VALID_RECORD, UNMATCHED_RECORD]).freeze
      end

      class FieldSpec; end

      class DataDictionaryInstructions; end

      class EmailPINExtractorSpec; end

      class MD5PINExtractorSpec; end

      class SHA1PINExtractorSpec; end

      class NAPkinPINExtractorSpec; end

      class EsPINExtractorSpec; end

      class ZipPINExtractorSpec; end

      class Zip4PINExtractorSpec; end

      class Zip6PINExtractorSpec; end

      class NameAndCityPINExtractorSpec; end

      class HouseholdPINExtractorSpec; end

      class GeneralizedEsPINExtractorSpec; end

      class EIDPINExtractorSpec; end

      class EncryptedEIDPINExtractorSpec; end

      class CustomPINExtractorSpec; end

      class PINExtractorSpec < ::Thrift::Union; end

      class NamedPINExtractorSpec; end

      class CDSImportSpecInstructions; end

      class CDSConfig; end

      class CDSConfigs; end

      class RecordKey < ::Thrift::Union; end

      class RecordToken; end

      class ParsedRecord; end

      class ParsedFileRecord; end

      class HdfsFileMetadata; end

      # Specs for each column in the customer file
      class FieldSpec
        include ::Thrift::Struct, ::Thrift::Struct_Union
        LABEL = 1
        COLUMN_INDEX = 2
        START_POSITION = 3
        WIDTH = 4
        ENUM_SPEC = 5

        FIELDS = {
          # Column header
          LABEL => {:type => ::Thrift::Types::STRING, :name => 'label'},
          # Index of column in case of delimited files
          COLUMN_INDEX => {:type => ::Thrift::Types::I32, :name => 'column_index', :optional => true},
          # Start position of column in case of fixed-width files
          START_POSITION => {:type => ::Thrift::Types::I32, :name => 'start_position', :optional => true},
          # Width of column in case of fixed-width files
          WIDTH => {:type => ::Thrift::Types::I32, :name => 'width', :optional => true},
          # Map of enum referred by this field.
# For eg, for some customer, A1 = Baseball, A2 = Basketball, etc.
          ENUM_SPEC => {:type => ::Thrift::Types::MAP, :name => 'enum_spec', :key => {:type => ::Thrift::Types::STRING}, :value => {:type => ::Thrift::Types::STRING}, :optional => true}
        }

        def struct_fields; FIELDS; end

        def validate
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field label is unset!') unless @label
        end

        ::Thrift::Struct.generate_accessors self
      end

      # DataDictionaryInstructions captures layout details for the entire file
# along with specs for each column.
      class DataDictionaryInstructions
        include ::Thrift::Struct, ::Thrift::Struct_Union
        FILE_FORMAT = 1
        DELIMITER = 2
        FIELD_SPECS = 3

        FIELDS = {
          FILE_FORMAT => {:type => ::Thrift::Types::I32, :name => 'file_format', :enum_class => ::Rapleaf::Types::Importer::FileFormat},
          # Only for delimited files
          DELIMITER => {:type => ::Thrift::Types::STRING, :name => 'delimiter', :optional => true},
          FIELD_SPECS => {:type => ::Thrift::Types::LIST, :name => 'field_specs', :element => {:type => ::Thrift::Types::STRUCT, :class => ::Rapleaf::Types::Importer::FieldSpec}}
        }

        def struct_fields; FIELDS; end

        def validate
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field file_format is unset!') unless @file_format
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field field_specs is unset!') unless @field_specs
          unless @file_format.nil? || ::Rapleaf::Types::Importer::FileFormat::VALID_VALUES.include?(@file_format)
            raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field file_format!')
          end
        end

        ::Thrift::Struct.generate_accessors self
      end

      class EmailPINExtractorSpec
        include ::Thrift::Struct, ::Thrift::Struct_Union
        FIELD_NUM = 1

        FIELDS = {
          FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'field_num'}
        }

        def struct_fields; FIELDS; end

        def validate
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field field_num is unset!') unless @field_num
        end

        ::Thrift::Struct.generate_accessors self
      end

      class MD5PINExtractorSpec
        include ::Thrift::Struct, ::Thrift::Struct_Union
        FIELD_NUM = 1

        FIELDS = {
          FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'field_num'}
        }

        def struct_fields; FIELDS; end

        def validate
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field field_num is unset!') unless @field_num
        end

        ::Thrift::Struct.generate_accessors self
      end

      class SHA1PINExtractorSpec
        include ::Thrift::Struct, ::Thrift::Struct_Union
        FIELD_NUM = 1

        FIELDS = {
          FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'field_num'}
        }

        def struct_fields; FIELDS; end

        def validate
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field field_num is unset!') unless @field_num
        end

        ::Thrift::Struct.generate_accessors self
      end

      class NAPkinPINExtractorSpec
        include ::Thrift::Struct, ::Thrift::Struct_Union
        FIRST_NAME_FIELD_NUM = 1
        LAST_NAME_FIELD_NUM = 2
        FIRST_ADDRESS_LINE_FIELD_NUM = 3
        SECOND_ADDRESS_LINE_FIELD_NUM = 4
        CITY_FIELD_NUM = 5
        STATE_FIELD_NUM = 6
        FIRST_ZIP_FIELD_NUM = 7
        LAST_ZIP_FIELD_NUM = 8
        RAW_NAME_FIELD_NUM = 9
        SECOND_RAW_NAME_FIELD_NUM = 10
        DPC_CODE_FIELD_NUM = 11

        FIELDS = {
          FIRST_NAME_FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'first_name_field_num', :optional => true},
          LAST_NAME_FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'last_name_field_num', :optional => true},
          FIRST_ADDRESS_LINE_FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'first_address_line_field_num', :optional => true},
          SECOND_ADDRESS_LINE_FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'second_address_line_field_num', :optional => true},
          CITY_FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'city_field_num', :optional => true},
          STATE_FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'state_field_num', :optional => true},
          FIRST_ZIP_FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'first_zip_field_num', :optional => true},
          LAST_ZIP_FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'last_zip_field_num', :optional => true},
          RAW_NAME_FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'raw_name_field_num', :optional => true},
          SECOND_RAW_NAME_FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'second_raw_name_field_num', :optional => true},
          DPC_CODE_FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'dpc_code_field_num', :optional => true}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class EsPINExtractorSpec
        include ::Thrift::Struct, ::Thrift::Struct_Union
        SITE = 1
        USERID = 2
        FIELD_NUM = 3

        FIELDS = {
          SITE => {:type => ::Thrift::Types::I32, :name => 'site', :enum_class => ::Rapleaf::Types::PersonData::EsSite},
          # If this is true then the field is a userid.
# If not then it is a username.
          USERID => {:type => ::Thrift::Types::BOOL, :name => 'userid'},
          FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'field_num'}
        }

        def struct_fields; FIELDS; end

        def validate
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field site is unset!') unless @site
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field userid is unset!') if @userid.nil?
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field field_num is unset!') unless @field_num
          unless @site.nil? || ::Rapleaf::Types::PersonData::EsSite::VALID_VALUES.include?(@site)
            raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field site!')
          end
        end

        ::Thrift::Struct.generate_accessors self
      end

      class ZipPINExtractorSpec
        include ::Thrift::Struct, ::Thrift::Struct_Union
        FIELD_NUM = 1

        FIELDS = {
          FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'field_num'}
        }

        def struct_fields; FIELDS; end

        def validate
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field field_num is unset!') unless @field_num
        end

        ::Thrift::Struct.generate_accessors self
      end

      class Zip4PINExtractorSpec
        include ::Thrift::Struct, ::Thrift::Struct_Union
        FIELD_NUM = 1
        SECOND_FIELD_NUM = 2

        FIELDS = {
          FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'field_num'},
          SECOND_FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'second_field_num', :optional => true}
        }

        def struct_fields; FIELDS; end

        def validate
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field field_num is unset!') unless @field_num
        end

        ::Thrift::Struct.generate_accessors self
      end

      class Zip6PINExtractorSpec
        include ::Thrift::Struct, ::Thrift::Struct_Union
        FIELD_NUM = 1
        SECOND_FIELD_NUM = 2
        DPC_CODE_FIELD_NUM = 3

        FIELDS = {
          FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'field_num'},
          SECOND_FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'second_field_num', :optional => true},
          DPC_CODE_FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'dpc_code_field_num', :optional => true}
        }

        def struct_fields; FIELDS; end

        def validate
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field field_num is unset!') unless @field_num
        end

        ::Thrift::Struct.generate_accessors self
      end

      class NameAndCityPINExtractorSpec
        include ::Thrift::Struct, ::Thrift::Struct_Union
        FIRSTNAME_FIELD_NUM = 1
        LASTNAME_FIELD_NUM = 2
        CITY_FIELD_NUM = 3
        STATE_FIELD_NUM = 4
        RAW_NAME_FIELD_NUM = 5
        SECOND_RAW_NAME_FIELD_NUM = 6

        FIELDS = {
          FIRSTNAME_FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'firstname_field_num', :optional => true},
          LASTNAME_FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'lastname_field_num', :optional => true},
          CITY_FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'city_field_num'},
          STATE_FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'state_field_num'},
          RAW_NAME_FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'raw_name_field_num', :optional => true},
          SECOND_RAW_NAME_FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'second_raw_name_field_num', :optional => true}
        }

        def struct_fields; FIELDS; end

        def validate
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field city_field_num is unset!') unless @city_field_num
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field state_field_num is unset!') unless @state_field_num
        end

        ::Thrift::Struct.generate_accessors self
      end

      class HouseholdPINExtractorSpec
        include ::Thrift::Struct, ::Thrift::Struct_Union
        LAST_NAME_FIELD_NUM = 1
        ADDRESS_LINE_FIELD_NUM = 2
        CITY_FIELD_NUM = 3
        STATE_FIELD_NUM = 4
        FIRST_ZIP_FIELD_NUM = 5
        SECOND_ZIP_FIELD_NUM = 6
        RAW_NAME_FIELD_NUM = 7
        SECOND_RAW_NAME_FIELD_NUM = 8
        SECOND_ADDRESS_LINE_FIELD_NUM = 9

        FIELDS = {
          LAST_NAME_FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'last_name_field_num', :optional => true},
          ADDRESS_LINE_FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'address_line_field_num', :optional => true},
          CITY_FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'city_field_num', :optional => true},
          STATE_FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'state_field_num', :optional => true},
          FIRST_ZIP_FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'first_zip_field_num', :optional => true},
          SECOND_ZIP_FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'second_zip_field_num', :optional => true},
          RAW_NAME_FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'raw_name_field_num', :optional => true},
          SECOND_RAW_NAME_FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'second_raw_name_field_num', :optional => true},
          SECOND_ADDRESS_LINE_FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'second_address_line_field_num', :optional => true}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class GeneralizedEsPINExtractorSpec
        include ::Thrift::Struct, ::Thrift::Struct_Union
        SITE_ID_FIELD_NUM = 1
        USERID_OR_USERNAME_FIELD_NUM = 2
        IDENTIFIER_VALUE_FIELD_NUM = 3

        FIELDS = {
          # The integer for the EsPIN's EsSite.
          SITE_ID_FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'site_id_field_num'},
          # A field that is 1 if the identifier is
# a userid and 2 if the identifier is a
# username.
          USERID_OR_USERNAME_FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'userid_or_username_field_num'},
          # A field that contains the actual
# value of the identifier (userid or
# username).
          IDENTIFIER_VALUE_FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'identifier_value_field_num'}
        }

        def struct_fields; FIELDS; end

        def validate
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field site_id_field_num is unset!') unless @site_id_field_num
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field userid_or_username_field_num is unset!') unless @userid_or_username_field_num
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field identifier_value_field_num is unset!') unless @identifier_value_field_num
        end

        ::Thrift::Struct.generate_accessors self
      end

      class EIDPINExtractorSpec
        include ::Thrift::Struct, ::Thrift::Struct_Union
        FIELD_NUM = 1

        FIELDS = {
          FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'field_num'}
        }

        def struct_fields; FIELDS; end

        def validate
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field field_num is unset!') unless @field_num
        end

        ::Thrift::Struct.generate_accessors self
      end

      class EncryptedEIDPINExtractorSpec
        include ::Thrift::Struct, ::Thrift::Struct_Union
        FIELD_NUM = 1
        ENCRYPTION_KEY = 2

        FIELDS = {
          FIELD_NUM => {:type => ::Thrift::Types::I32, :name => 'field_num'},
          ENCRYPTION_KEY => {:type => ::Thrift::Types::STRING, :name => 'encryption_key'}
        }

        def struct_fields; FIELDS; end

        def validate
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field field_num is unset!') unless @field_num
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field encryption_key is unset!') unless @encryption_key
        end

        ::Thrift::Struct.generate_accessors self
      end

      class CustomPINExtractorSpec
        include ::Thrift::Struct, ::Thrift::Struct_Union
        FIELD_NUMS = 1
        PIN_EXTRACTOR_CLASS = 2

        FIELDS = {
          FIELD_NUMS => {:type => ::Thrift::Types::LIST, :name => 'field_nums', :element => {:type => ::Thrift::Types::I32}},
          PIN_EXTRACTOR_CLASS => {:type => ::Thrift::Types::STRING, :name => 'pin_extractor_class'}
        }

        def struct_fields; FIELDS; end

        def validate
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field field_nums is unset!') unless @field_nums
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field pin_extractor_class is unset!') unless @pin_extractor_class
        end

        ::Thrift::Struct.generate_accessors self
      end

      # A union of possible methods of PINExtraction
      class PINExtractorSpec < ::Thrift::Union
        include ::Thrift::Struct_Union
        class << self
          def email_pin_extractor_spec(val)
            PINExtractorSpec.new(:email_pin_extractor_spec, val)
          end

          def md5_pin_extractor_spec(val)
            PINExtractorSpec.new(:md5_pin_extractor_spec, val)
          end

          def sha1_pin_extractor_spec(val)
            PINExtractorSpec.new(:sha1_pin_extractor_spec, val)
          end

          def napkin_pin_extractor_spec(val)
            PINExtractorSpec.new(:napkin_pin_extractor_spec, val)
          end

          def es_pin_extractor_spec(val)
            PINExtractorSpec.new(:es_pin_extractor_spec, val)
          end

          def zip_pin_extractor_spec(val)
            PINExtractorSpec.new(:zip_pin_extractor_spec, val)
          end

          def zip4_pin_extractor_spec(val)
            PINExtractorSpec.new(:zip4_pin_extractor_spec, val)
          end

          def zip6_pin_extractor_spec(val)
            PINExtractorSpec.new(:zip6_pin_extractor_spec, val)
          end

          def eid_pin_extractor_spec(val)
            PINExtractorSpec.new(:eid_pin_extractor_spec, val)
          end

          def name_and_city_pin_extractor_spec(val)
            PINExtractorSpec.new(:name_and_city_pin_extractor_spec, val)
          end

          def household_pin_extractor_spec(val)
            PINExtractorSpec.new(:household_pin_extractor_spec, val)
          end

          def generalized_es_pin_extractor_spec(val)
            PINExtractorSpec.new(:generalized_es_pin_extractor_spec, val)
          end

          def encrypted_eid_pin_extractor_spec(val)
            PINExtractorSpec.new(:encrypted_eid_pin_extractor_spec, val)
          end

          def custom_pin_extractor_spec(val)
            PINExtractorSpec.new(:custom_pin_extractor_spec, val)
          end
        end

        EMAIL_PIN_EXTRACTOR_SPEC = 1
        MD5_PIN_EXTRACTOR_SPEC = 2
        SHA1_PIN_EXTRACTOR_SPEC = 3
        NAPKIN_PIN_EXTRACTOR_SPEC = 4
        ES_PIN_EXTRACTOR_SPEC = 5
        ZIP_PIN_EXTRACTOR_SPEC = 6
        ZIP4_PIN_EXTRACTOR_SPEC = 7
        ZIP6_PIN_EXTRACTOR_SPEC = 8
        EID_PIN_EXTRACTOR_SPEC = 9
        NAME_AND_CITY_PIN_EXTRACTOR_SPEC = 10
        HOUSEHOLD_PIN_EXTRACTOR_SPEC = 11
        GENERALIZED_ES_PIN_EXTRACTOR_SPEC = 12
        ENCRYPTED_EID_PIN_EXTRACTOR_SPEC = 13
        CUSTOM_PIN_EXTRACTOR_SPEC = 99

        FIELDS = {
          EMAIL_PIN_EXTRACTOR_SPEC => {:type => ::Thrift::Types::STRUCT, :name => 'email_pin_extractor_spec', :class => ::Rapleaf::Types::Importer::EmailPINExtractorSpec, :optional => true},
          MD5_PIN_EXTRACTOR_SPEC => {:type => ::Thrift::Types::STRUCT, :name => 'md5_pin_extractor_spec', :class => ::Rapleaf::Types::Importer::MD5PINExtractorSpec, :optional => true},
          SHA1_PIN_EXTRACTOR_SPEC => {:type => ::Thrift::Types::STRUCT, :name => 'sha1_pin_extractor_spec', :class => ::Rapleaf::Types::Importer::SHA1PINExtractorSpec, :optional => true},
          NAPKIN_PIN_EXTRACTOR_SPEC => {:type => ::Thrift::Types::STRUCT, :name => 'napkin_pin_extractor_spec', :class => ::Rapleaf::Types::Importer::NAPkinPINExtractorSpec, :optional => true},
          ES_PIN_EXTRACTOR_SPEC => {:type => ::Thrift::Types::STRUCT, :name => 'es_pin_extractor_spec', :class => ::Rapleaf::Types::Importer::EsPINExtractorSpec, :optional => true},
          # Looks for matching zip code values
          ZIP_PIN_EXTRACTOR_SPEC => {:type => ::Thrift::Types::STRUCT, :name => 'zip_pin_extractor_spec', :class => ::Rapleaf::Types::Importer::ZipPINExtractorSpec, :optional => true},
          # Looks for matching zip+4 values
          ZIP4_PIN_EXTRACTOR_SPEC => {:type => ::Thrift::Types::STRUCT, :name => 'zip4_pin_extractor_spec', :class => ::Rapleaf::Types::Importer::Zip4PINExtractorSpec, :optional => true},
          # Looks for matching zip+6 values
          ZIP6_PIN_EXTRACTOR_SPEC => {:type => ::Thrift::Types::STRUCT, :name => 'zip6_pin_extractor_spec', :class => ::Rapleaf::Types::Importer::Zip6PINExtractorSpec, :optional => true},
          EID_PIN_EXTRACTOR_SPEC => {:type => ::Thrift::Types::STRUCT, :name => 'eid_pin_extractor_spec', :class => ::Rapleaf::Types::Importer::EIDPINExtractorSpec, :optional => true},
          NAME_AND_CITY_PIN_EXTRACTOR_SPEC => {:type => ::Thrift::Types::STRUCT, :name => 'name_and_city_pin_extractor_spec', :class => ::Rapleaf::Types::Importer::NameAndCityPINExtractorSpec, :optional => true},
          HOUSEHOLD_PIN_EXTRACTOR_SPEC => {:type => ::Thrift::Types::STRUCT, :name => 'household_pin_extractor_spec', :class => ::Rapleaf::Types::Importer::HouseholdPINExtractorSpec, :optional => true},
          GENERALIZED_ES_PIN_EXTRACTOR_SPEC => {:type => ::Thrift::Types::STRUCT, :name => 'generalized_es_pin_extractor_spec', :class => ::Rapleaf::Types::Importer::GeneralizedEsPINExtractorSpec, :optional => true},
          ENCRYPTED_EID_PIN_EXTRACTOR_SPEC => {:type => ::Thrift::Types::STRUCT, :name => 'encrypted_eid_pin_extractor_spec', :class => ::Rapleaf::Types::Importer::EncryptedEIDPINExtractorSpec, :optional => true},
          CUSTOM_PIN_EXTRACTOR_SPEC => {:type => ::Thrift::Types::STRUCT, :name => 'custom_pin_extractor_spec', :class => ::Rapleaf::Types::Importer::CustomPINExtractorSpec, :optional => true}
        }

        def struct_fields; FIELDS; end

        def validate
          raise(StandardError, 'Union fields are not set.') if get_set_field.nil? || get_value.nil?
        end

        ::Thrift::Union.generate_accessors self
      end

      # PINExtractorSpec with a name, for eg. "primary email",
# "secondary email", etc.
      class NamedPINExtractorSpec
        include ::Thrift::Struct, ::Thrift::Struct_Union
        NAME = 1
        PIN_EXTRACTOR_SPEC = 2

        FIELDS = {
          NAME => {:type => ::Thrift::Types::STRING, :name => 'name'},
          PIN_EXTRACTOR_SPEC => {:type => ::Thrift::Types::STRUCT, :name => 'pin_extractor_spec', :class => ::Rapleaf::Types::Importer::PINExtractorSpec}
        }

        def struct_fields; FIELDS; end

        def validate
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field name is unset!') unless @name
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field pin_extractor_spec is unset!') unless @pin_extractor_spec
        end

        ::Thrift::Struct.generate_accessors self
      end

      class CDSImportSpecInstructions
        include ::Thrift::Struct, ::Thrift::Struct_Union
        NAMED_PIN_EXTRACTOR_SPECS = 1

        FIELDS = {
          NAMED_PIN_EXTRACTOR_SPECS => {:type => ::Thrift::Types::LIST, :name => 'named_pin_extractor_specs', :element => {:type => ::Thrift::Types::STRUCT, :class => ::Rapleaf::Types::Importer::NamedPINExtractorSpec}}
        }

        def struct_fields; FIELDS; end

        def validate
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field named_pin_extractor_specs is unset!') unless @named_pin_extractor_specs
        end

        ::Thrift::Struct.generate_accessors self
      end

      class CDSConfig
        include ::Thrift::Struct, ::Thrift::Struct_Union
        CUSTOMER_NAME = 1
        DICTIONARYINSTRUCTIONS = 2
        IMPORTINSTRUCTIONS = 3
        CDS_ID = 4

        FIELDS = {
          CUSTOMER_NAME => {:type => ::Thrift::Types::STRING, :name => 'customer_name'},
          DICTIONARYINSTRUCTIONS => {:type => ::Thrift::Types::STRUCT, :name => 'dictionaryInstructions', :class => ::Rapleaf::Types::Importer::DataDictionaryInstructions},
          IMPORTINSTRUCTIONS => {:type => ::Thrift::Types::STRUCT, :name => 'importInstructions', :class => ::Rapleaf::Types::Importer::CDSImportSpecInstructions},
          CDS_ID => {:type => ::Thrift::Types::I32, :name => 'cds_id'}
        }

        def struct_fields; FIELDS; end

        def validate
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field customer_name is unset!') unless @customer_name
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field dictionaryInstructions is unset!') unless @dictionaryInstructions
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field importInstructions is unset!') unless @importInstructions
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field cds_id is unset!') unless @cds_id
        end

        ::Thrift::Struct.generate_accessors self
      end

      class CDSConfigs
        include ::Thrift::Struct, ::Thrift::Struct_Union
        CONFIGS = 1

        FIELDS = {
          CONFIGS => {:type => ::Thrift::Types::MAP, :name => 'configs', :key => {:type => ::Thrift::Types::I32}, :value => {:type => ::Thrift::Types::STRUCT, :class => ::Rapleaf::Types::Importer::CDSConfig}}
        }

        def struct_fields; FIELDS; end

        def validate
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field configs is unset!') unless @configs
        end

        ::Thrift::Struct.generate_accessors self
      end

      class RecordKey < ::Thrift::Union
        include ::Thrift::Struct_Union
        class << self
          def column_id(val)
            RecordKey.new(:column_id, val)
          end

          def key(val)
            RecordKey.new(:key, val)
          end

          def unknown(val)
            RecordKey.new(:unknown, val)
          end
        end

        COLUMN_ID = 1
        KEY = 2
        UNKNOWN = 3

        FIELDS = {
          COLUMN_ID => {:type => ::Thrift::Types::I64, :name => 'column_id', :optional => true},
          KEY => {:type => ::Thrift::Types::STRING, :name => 'key', :optional => true},
          UNKNOWN => {:type => ::Thrift::Types::BOOL, :name => 'unknown', :optional => true}
        }

        def struct_fields; FIELDS; end

        def validate
          raise(StandardError, 'Union fields are not set.') if get_set_field.nil? || get_value.nil?
        end

        ::Thrift::Union.generate_accessors self
      end

      class RecordToken
        include ::Thrift::Struct, ::Thrift::Struct_Union
        KEY = 1
        VALUE = 2

        FIELDS = {
          KEY => {:type => ::Thrift::Types::STRUCT, :name => 'key', :class => ::Rapleaf::Types::Importer::RecordKey},
          VALUE => {:type => ::Thrift::Types::STRING, :name => 'value'}
        }

        def struct_fields; FIELDS; end

        def validate
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field key is unset!') unless @key
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field value is unset!') unless @value
        end

        ::Thrift::Struct.generate_accessors self
      end

      class ParsedRecord
        include ::Thrift::Struct, ::Thrift::Struct_Union
        PARSED_FIELDS = 1
        RAW_LINE = 2
        NUM_COLUMNS = 3
        HEADER = 4
        TOKENS = 5

        FIELDS = {
          PARSED_FIELDS => {:type => ::Thrift::Types::MAP, :name => 'parsed_fields', :key => {:type => ::Thrift::Types::I32}, :value => {:type => ::Thrift::Types::STRING}},
          RAW_LINE => {:type => ::Thrift::Types::STRING, :name => 'raw_line', :optional => true},
          NUM_COLUMNS => {:type => ::Thrift::Types::I32, :name => 'num_columns', :optional => true},
          HEADER => {:type => ::Thrift::Types::BOOL, :name => 'header', :optional => true},
          TOKENS => {:type => ::Thrift::Types::LIST, :name => 'tokens', :element => {:type => ::Thrift::Types::STRUCT, :class => ::Rapleaf::Types::Importer::RecordToken}, :optional => true}
        }

        def struct_fields; FIELDS; end

        def validate
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field parsed_fields is unset!') unless @parsed_fields
        end

        ::Thrift::Struct.generate_accessors self
      end

      class ParsedFileRecord
        include ::Thrift::Struct, ::Thrift::Struct_Union
        FILE_INDEX = 1
        LINE_NUMBER = 2
        PARSED_FIELDS = 3
        RAW_LINE = 4
        NUM_COLUMNS = 5
        HEADER = 6
        TOKENS = 7

        FIELDS = {
          FILE_INDEX => {:type => ::Thrift::Types::I16, :name => 'file_index'},
          LINE_NUMBER => {:type => ::Thrift::Types::I64, :name => 'line_number'},
          PARSED_FIELDS => {:type => ::Thrift::Types::MAP, :name => 'parsed_fields', :key => {:type => ::Thrift::Types::I32}, :value => {:type => ::Thrift::Types::STRING}},
          RAW_LINE => {:type => ::Thrift::Types::STRING, :name => 'raw_line', :optional => true},
          NUM_COLUMNS => {:type => ::Thrift::Types::I32, :name => 'num_columns', :optional => true},
          HEADER => {:type => ::Thrift::Types::BOOL, :name => 'header', :optional => true},
          TOKENS => {:type => ::Thrift::Types::LIST, :name => 'tokens', :element => {:type => ::Thrift::Types::STRUCT, :class => ::Rapleaf::Types::Importer::RecordToken}, :optional => true}
        }

        def struct_fields; FIELDS; end

        def validate
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field file_index is unset!') unless @file_index
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field line_number is unset!') unless @line_number
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field parsed_fields is unset!') unless @parsed_fields
        end

        ::Thrift::Struct.generate_accessors self
      end

      class HdfsFileMetadata
        include ::Thrift::Struct, ::Thrift::Struct_Union
        FILE_PATH = 1
        BLOCK_START = 2
        RECORD_COUNT = 3

        FIELDS = {
          FILE_PATH => {:type => ::Thrift::Types::STRING, :name => 'file_path'},
          BLOCK_START => {:type => ::Thrift::Types::I64, :name => 'block_start'},
          RECORD_COUNT => {:type => ::Thrift::Types::I64, :name => 'record_count'}
        }

        def struct_fields; FIELDS; end

        def validate
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field file_path is unset!') unless @file_path
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field block_start is unset!') unless @block_start
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field record_count is unset!') unless @record_count
        end

        ::Thrift::Struct.generate_accessors self
      end

    end
  end
end