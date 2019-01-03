#
# Autogenerated by Thrift Compiler (0.11.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'
require File.join File.dirname(__FILE__), 'ingestion_postal_configuration_types'


module Liveramp
  module Ingestion
    module Identifier
      module Configuration
        class PlaintextEmailSpec; end

        class Md5EmailSpec; end

        class Sha1EmailSpec; end

        class Sha256EmailSpec; end

        class PhoneSpec; end

        class Sha1PhoneSpec; end

        class NameSpec; end

        class NapSpec; end

        class NameAndCitySpec; end

        class ClinkSpec; end

        class NameAndEmailSpec; end

        class NameAndPhoneSpec; end

        class NameAndMd5EmailSpec; end

        class OfflineIdSpec < ::Thrift::Union; end

        class AnaIdSpec; end

        class IdfaSpec; end

        class AaidSpec; end

        class Sha1IdfaSpec; end

        class Sha1AaidSpec; end

        class MixedAaidIdfa; end

        class MuidSpec < ::Thrift::Union; end

        class OnlineIdSpec < ::Thrift::Union; end

        class IdSpec < ::Thrift::Union; end

        class MarkedIdSpec; end

        class PlaintextEmailSpec
          include ::Thrift::Struct, ::Thrift::Struct_Union
          KEY = 1

          FIELDS = {
            KEY => {:type => ::Thrift::Types::STRING, :name => 'key'}
          }

          def struct_fields; FIELDS; end

          def validate
            raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field key is unset!') unless @key
          end

          ::Thrift::Struct.generate_accessors self
        end

        class Md5EmailSpec
          include ::Thrift::Struct, ::Thrift::Struct_Union
          KEY = 1

          FIELDS = {
            KEY => {:type => ::Thrift::Types::STRING, :name => 'key'}
          }

          def struct_fields; FIELDS; end

          def validate
            raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field key is unset!') unless @key
          end

          ::Thrift::Struct.generate_accessors self
        end

        class Sha1EmailSpec
          include ::Thrift::Struct, ::Thrift::Struct_Union
          KEY = 1

          FIELDS = {
            KEY => {:type => ::Thrift::Types::STRING, :name => 'key'}
          }

          def struct_fields; FIELDS; end

          def validate
            raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field key is unset!') unless @key
          end

          ::Thrift::Struct.generate_accessors self
        end

        class Sha256EmailSpec
          include ::Thrift::Struct, ::Thrift::Struct_Union
          KEY = 1

          FIELDS = {
            KEY => {:type => ::Thrift::Types::STRING, :name => 'key'}
          }

          def struct_fields; FIELDS; end

          def validate
            raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field key is unset!') unless @key
          end

          ::Thrift::Struct.generate_accessors self
        end

        class PhoneSpec
          include ::Thrift::Struct, ::Thrift::Struct_Union
          KEY = 1

          FIELDS = {
            KEY => {:type => ::Thrift::Types::STRING, :name => 'key'}
          }

          def struct_fields; FIELDS; end

          def validate
            raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field key is unset!') unless @key
          end

          ::Thrift::Struct.generate_accessors self
        end

        class Sha1PhoneSpec
          include ::Thrift::Struct, ::Thrift::Struct_Union
          KEY = 1

          FIELDS = {
            KEY => {:type => ::Thrift::Types::STRING, :name => 'key'}
          }

          def struct_fields; FIELDS; end

          def validate
            raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field key is unset!') unless @key
          end

          ::Thrift::Struct.generate_accessors self
        end

        class NameSpec
          include ::Thrift::Struct, ::Thrift::Struct_Union
          FIRST_NAME_KEY = 1
          LAST_NAME_KEY = 2
          FULL_NAME_KEY = 3

          FIELDS = {
            FIRST_NAME_KEY => {:type => ::Thrift::Types::STRING, :name => 'first_name_key', :optional => true},
            LAST_NAME_KEY => {:type => ::Thrift::Types::STRING, :name => 'last_name_key', :optional => true},
            FULL_NAME_KEY => {:type => ::Thrift::Types::STRING, :name => 'full_name_key', :optional => true}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class NapSpec
          include ::Thrift::Struct, ::Thrift::Struct_Union
          NAME = 1
          POSTAL = 2

          FIELDS = {
            NAME => {:type => ::Thrift::Types::STRUCT, :name => 'name', :class => ::Liveramp::Ingestion::Identifier::Configuration::NameSpec},
            POSTAL => {:type => ::Thrift::Types::STRUCT, :name => 'postal', :class => ::Liveramp::Ingestion::Identifier::Configuration::PostalSpec}
          }

          def struct_fields; FIELDS; end

          def validate
            raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field name is unset!') unless @name
            raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field postal is unset!') unless @postal
          end

          ::Thrift::Struct.generate_accessors self
        end

        class NameAndCitySpec
          include ::Thrift::Struct, ::Thrift::Struct_Union
          NAME = 1
          CITY_KEY = 2
          STATE_KEY = 3

          FIELDS = {
            NAME => {:type => ::Thrift::Types::STRUCT, :name => 'name', :class => ::Liveramp::Ingestion::Identifier::Configuration::NameSpec},
            CITY_KEY => {:type => ::Thrift::Types::STRING, :name => 'city_key'},
            STATE_KEY => {:type => ::Thrift::Types::STRING, :name => 'state_key'}
          }

          def struct_fields; FIELDS; end

          def validate
            raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field name is unset!') unless @name
            raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field city_key is unset!') unless @city_key
            raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field state_key is unset!') unless @state_key
          end

          ::Thrift::Struct.generate_accessors self
        end

        class ClinkSpec
          include ::Thrift::Struct, ::Thrift::Struct_Union
          CLINK_KEY = 1

          FIELDS = {
            CLINK_KEY => {:type => ::Thrift::Types::STRING, :name => 'clink_key'}
          }

          def struct_fields; FIELDS; end

          def validate
            raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field clink_key is unset!') unless @clink_key
          end

          ::Thrift::Struct.generate_accessors self
        end

        class NameAndEmailSpec
          include ::Thrift::Struct, ::Thrift::Struct_Union
          NAME_SPEC = 1
          PLAINTEXT_EMAIL = 2

          FIELDS = {
            NAME_SPEC => {:type => ::Thrift::Types::STRUCT, :name => 'name_spec', :class => ::Liveramp::Ingestion::Identifier::Configuration::NameSpec},
            PLAINTEXT_EMAIL => {:type => ::Thrift::Types::STRUCT, :name => 'plaintext_email', :class => ::Liveramp::Ingestion::Identifier::Configuration::PlaintextEmailSpec}
          }

          def struct_fields; FIELDS; end

          def validate
            raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field name_spec is unset!') unless @name_spec
            raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field plaintext_email is unset!') unless @plaintext_email
          end

          ::Thrift::Struct.generate_accessors self
        end

        class NameAndPhoneSpec
          include ::Thrift::Struct, ::Thrift::Struct_Union
          NAME_SPEC = 1
          PHONE = 2

          FIELDS = {
            NAME_SPEC => {:type => ::Thrift::Types::STRUCT, :name => 'name_spec', :class => ::Liveramp::Ingestion::Identifier::Configuration::NameSpec},
            PHONE => {:type => ::Thrift::Types::STRUCT, :name => 'phone', :class => ::Liveramp::Ingestion::Identifier::Configuration::PhoneSpec}
          }

          def struct_fields; FIELDS; end

          def validate
            raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field name_spec is unset!') unless @name_spec
            raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field phone is unset!') unless @phone
          end

          ::Thrift::Struct.generate_accessors self
        end

        class NameAndMd5EmailSpec
          include ::Thrift::Struct, ::Thrift::Struct_Union
          NAME_SPEC = 1
          MD5_EMAIL = 2

          FIELDS = {
            NAME_SPEC => {:type => ::Thrift::Types::STRUCT, :name => 'name_spec', :class => ::Liveramp::Ingestion::Identifier::Configuration::NameSpec},
            MD5_EMAIL => {:type => ::Thrift::Types::STRUCT, :name => 'md5_email', :class => ::Liveramp::Ingestion::Identifier::Configuration::Md5EmailSpec}
          }

          def struct_fields; FIELDS; end

          def validate
            raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field name_spec is unset!') unless @name_spec
            raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field md5_email is unset!') unless @md5_email
          end

          ::Thrift::Struct.generate_accessors self
        end

        class OfflineIdSpec < ::Thrift::Union
          include ::Thrift::Struct_Union
          class << self
            def plaintext_email(val)
              OfflineIdSpec.new(:plaintext_email, val)
            end

            def md5_email(val)
              OfflineIdSpec.new(:md5_email, val)
            end

            def sha1_email(val)
              OfflineIdSpec.new(:sha1_email, val)
            end

            def nap(val)
              OfflineIdSpec.new(:nap, val)
            end

            def sha256_email(val)
              OfflineIdSpec.new(:sha256_email, val)
            end

            def phone(val)
              OfflineIdSpec.new(:phone, val)
            end

            def sha1_phone(val)
              OfflineIdSpec.new(:sha1_phone, val)
            end

            def name_and_city(val)
              OfflineIdSpec.new(:name_and_city, val)
            end

            def us_zip(val)
              OfflineIdSpec.new(:us_zip, val)
            end

            def clink(val)
              OfflineIdSpec.new(:clink, val)
            end

            def name_and_email(val)
              OfflineIdSpec.new(:name_and_email, val)
            end

            def name_and_phone(val)
              OfflineIdSpec.new(:name_and_phone, val)
            end

            def name_and_md5_email(val)
              OfflineIdSpec.new(:name_and_md5_email, val)
            end
          end

          PLAINTEXT_EMAIL = 1
          MD5_EMAIL = 2
          SHA1_EMAIL = 3
          NAP = 4
          SHA256_EMAIL = 5
          PHONE = 6
          SHA1_PHONE = 7
          NAME_AND_CITY = 8
          US_ZIP = 9
          CLINK = 10
          NAME_AND_EMAIL = 11
          NAME_AND_PHONE = 12
          NAME_AND_MD5_EMAIL = 13

          FIELDS = {
            PLAINTEXT_EMAIL => {:type => ::Thrift::Types::STRUCT, :name => 'plaintext_email', :class => ::Liveramp::Ingestion::Identifier::Configuration::PlaintextEmailSpec, :optional => true},
            MD5_EMAIL => {:type => ::Thrift::Types::STRUCT, :name => 'md5_email', :class => ::Liveramp::Ingestion::Identifier::Configuration::Md5EmailSpec, :optional => true},
            SHA1_EMAIL => {:type => ::Thrift::Types::STRUCT, :name => 'sha1_email', :class => ::Liveramp::Ingestion::Identifier::Configuration::Sha1EmailSpec, :optional => true},
            NAP => {:type => ::Thrift::Types::STRUCT, :name => 'nap', :class => ::Liveramp::Ingestion::Identifier::Configuration::NapSpec, :optional => true},
            SHA256_EMAIL => {:type => ::Thrift::Types::STRUCT, :name => 'sha256_email', :class => ::Liveramp::Ingestion::Identifier::Configuration::Sha256EmailSpec, :optional => true},
            PHONE => {:type => ::Thrift::Types::STRUCT, :name => 'phone', :class => ::Liveramp::Ingestion::Identifier::Configuration::PhoneSpec, :optional => true},
            SHA1_PHONE => {:type => ::Thrift::Types::STRUCT, :name => 'sha1_phone', :class => ::Liveramp::Ingestion::Identifier::Configuration::Sha1PhoneSpec, :optional => true},
            NAME_AND_CITY => {:type => ::Thrift::Types::STRUCT, :name => 'name_and_city', :class => ::Liveramp::Ingestion::Identifier::Configuration::NameAndCitySpec, :optional => true},
            US_ZIP => {:type => ::Thrift::Types::STRUCT, :name => 'us_zip', :class => ::Liveramp::Ingestion::Identifier::Configuration::UsZipSpec, :optional => true},
            CLINK => {:type => ::Thrift::Types::STRUCT, :name => 'clink', :class => ::Liveramp::Ingestion::Identifier::Configuration::ClinkSpec, :optional => true},
            NAME_AND_EMAIL => {:type => ::Thrift::Types::STRUCT, :name => 'name_and_email', :class => ::Liveramp::Ingestion::Identifier::Configuration::NameAndEmailSpec, :optional => true},
            NAME_AND_PHONE => {:type => ::Thrift::Types::STRUCT, :name => 'name_and_phone', :class => ::Liveramp::Ingestion::Identifier::Configuration::NameAndPhoneSpec, :optional => true},
            NAME_AND_MD5_EMAIL => {:type => ::Thrift::Types::STRUCT, :name => 'name_and_md5_email', :class => ::Liveramp::Ingestion::Identifier::Configuration::NameAndMd5EmailSpec, :optional => true}
          }

          def struct_fields; FIELDS; end

          def validate
            raise(StandardError, 'Union fields are not set.') if get_set_field.nil? || get_value.nil?
          end

          ::Thrift::Union.generate_accessors self
        end

        class AnaIdSpec
          include ::Thrift::Struct, ::Thrift::Struct_Union
          KEY = 1
          AD_NETWORK_ACCOUNT_ID = 2

          FIELDS = {
            KEY => {:type => ::Thrift::Types::STRING, :name => 'key'},
            AD_NETWORK_ACCOUNT_ID => {:type => ::Thrift::Types::I32, :name => 'ad_network_account_id'}
          }

          def struct_fields; FIELDS; end

          def validate
            raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field key is unset!') unless @key
            raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field ad_network_account_id is unset!') unless @ad_network_account_id
          end

          ::Thrift::Struct.generate_accessors self
        end

        class IdfaSpec
          include ::Thrift::Struct, ::Thrift::Struct_Union
          KEY = 1

          FIELDS = {
            KEY => {:type => ::Thrift::Types::STRING, :name => 'key'}
          }

          def struct_fields; FIELDS; end

          def validate
            raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field key is unset!') unless @key
          end

          ::Thrift::Struct.generate_accessors self
        end

        class AaidSpec
          include ::Thrift::Struct, ::Thrift::Struct_Union
          KEY = 1

          FIELDS = {
            KEY => {:type => ::Thrift::Types::STRING, :name => 'key'}
          }

          def struct_fields; FIELDS; end

          def validate
            raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field key is unset!') unless @key
          end

          ::Thrift::Struct.generate_accessors self
        end

        class Sha1IdfaSpec
          include ::Thrift::Struct, ::Thrift::Struct_Union
          KEY = 1

          FIELDS = {
            KEY => {:type => ::Thrift::Types::STRING, :name => 'key'}
          }

          def struct_fields; FIELDS; end

          def validate
            raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field key is unset!') unless @key
          end

          ::Thrift::Struct.generate_accessors self
        end

        class Sha1AaidSpec
          include ::Thrift::Struct, ::Thrift::Struct_Union
          KEY = 1

          FIELDS = {
            KEY => {:type => ::Thrift::Types::STRING, :name => 'key'}
          }

          def struct_fields; FIELDS; end

          def validate
            raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field key is unset!') unless @key
          end

          ::Thrift::Struct.generate_accessors self
        end

        class MixedAaidIdfa
          include ::Thrift::Struct, ::Thrift::Struct_Union
          KEY = 1

          FIELDS = {
            KEY => {:type => ::Thrift::Types::STRING, :name => 'key'}
          }

          def struct_fields; FIELDS; end

          def validate
            raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field key is unset!') unless @key
          end

          ::Thrift::Struct.generate_accessors self
        end

        class MuidSpec < ::Thrift::Union
          include ::Thrift::Struct_Union
          class << self
            def idfa(val)
              MuidSpec.new(:idfa, val)
            end

            def aaid(val)
              MuidSpec.new(:aaid, val)
            end

            def sha1_idfa(val)
              MuidSpec.new(:sha1_idfa, val)
            end

            def sha1_aaid(val)
              MuidSpec.new(:sha1_aaid, val)
            end

            def mixed_aaid_idfa(val)
              MuidSpec.new(:mixed_aaid_idfa, val)
            end
          end

          IDFA = 1
          AAID = 2
          SHA1_IDFA = 3
          SHA1_AAID = 4
          MIXED_AAID_IDFA = 5

          FIELDS = {
            IDFA => {:type => ::Thrift::Types::STRUCT, :name => 'idfa', :class => ::Liveramp::Ingestion::Identifier::Configuration::IdfaSpec, :optional => true},
            AAID => {:type => ::Thrift::Types::STRUCT, :name => 'aaid', :class => ::Liveramp::Ingestion::Identifier::Configuration::AaidSpec, :optional => true},
            SHA1_IDFA => {:type => ::Thrift::Types::STRUCT, :name => 'sha1_idfa', :class => ::Liveramp::Ingestion::Identifier::Configuration::Sha1IdfaSpec, :optional => true},
            SHA1_AAID => {:type => ::Thrift::Types::STRUCT, :name => 'sha1_aaid', :class => ::Liveramp::Ingestion::Identifier::Configuration::Sha1AaidSpec, :optional => true},
            MIXED_AAID_IDFA => {:type => ::Thrift::Types::STRUCT, :name => 'mixed_aaid_idfa', :class => ::Liveramp::Ingestion::Identifier::Configuration::MixedAaidIdfa, :optional => true}
          }

          def struct_fields; FIELDS; end

          def validate
            raise(StandardError, 'Union fields are not set.') if get_set_field.nil? || get_value.nil?
          end

          ::Thrift::Union.generate_accessors self
        end

        class OnlineIdSpec < ::Thrift::Union
          include ::Thrift::Struct_Union
          class << self
            def ana(val)
              OnlineIdSpec.new(:ana, val)
            end

            def muid_for_customer_data(val)
              OnlineIdSpec.new(:muid_for_customer_data, val)
            end

            def muid_for_matching(val)
              OnlineIdSpec.new(:muid_for_matching, val)
            end
          end

          ANA = 1
          MUID_FOR_CUSTOMER_DATA = 2
          MUID_FOR_MATCHING = 3

          FIELDS = {
            ANA => {:type => ::Thrift::Types::STRUCT, :name => 'ana', :class => ::Liveramp::Ingestion::Identifier::Configuration::AnaIdSpec, :optional => true},
            MUID_FOR_CUSTOMER_DATA => {:type => ::Thrift::Types::STRUCT, :name => 'muid_for_customer_data', :class => ::Liveramp::Ingestion::Identifier::Configuration::MuidSpec, :optional => true},
            MUID_FOR_MATCHING => {:type => ::Thrift::Types::STRUCT, :name => 'muid_for_matching', :class => ::Liveramp::Ingestion::Identifier::Configuration::MuidSpec, :optional => true}
          }

          def struct_fields; FIELDS; end

          def validate
            raise(StandardError, 'Union fields are not set.') if get_set_field.nil? || get_value.nil?
          end

          ::Thrift::Union.generate_accessors self
        end

        class IdSpec < ::Thrift::Union
          include ::Thrift::Struct_Union
          class << self
            def offline(val)
              IdSpec.new(:offline, val)
            end

            def online(val)
              IdSpec.new(:online, val)
            end
          end

          OFFLINE = 1
          ONLINE = 2

          FIELDS = {
            OFFLINE => {:type => ::Thrift::Types::STRUCT, :name => 'offline', :class => ::Liveramp::Ingestion::Identifier::Configuration::OfflineIdSpec, :optional => true},
            ONLINE => {:type => ::Thrift::Types::STRUCT, :name => 'online', :class => ::Liveramp::Ingestion::Identifier::Configuration::OnlineIdSpec, :optional => true}
          }

          def struct_fields; FIELDS; end

          def validate
            raise(StandardError, 'Union fields are not set.') if get_set_field.nil? || get_value.nil?
          end

          ::Thrift::Union.generate_accessors self
        end

        class MarkedIdSpec
          include ::Thrift::Struct, ::Thrift::Struct_Union
          MARKER = 1
          ID = 2

          FIELDS = {
            MARKER => {:type => ::Thrift::Types::STRING, :name => 'marker'},
            ID => {:type => ::Thrift::Types::STRUCT, :name => 'id', :class => ::Liveramp::Ingestion::Identifier::Configuration::IdSpec}
          }

          def struct_fields; FIELDS; end

          def validate
            raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field marker is unset!') unless @marker
            raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field id is unset!') unless @id
          end

          ::Thrift::Struct.generate_accessors self
        end

      end
    end
  end
end