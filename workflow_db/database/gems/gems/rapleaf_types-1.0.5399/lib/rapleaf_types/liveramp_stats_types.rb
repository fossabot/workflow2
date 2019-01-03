#
# Autogenerated by Thrift Compiler (0.11.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'
require File.join File.dirname(__FILE__), 'new_person_data_types'
require File.join File.dirname(__FILE__), 'enums_types'
require File.join File.dirname(__FILE__), 'util_types'


module Liveramp
  module Stats
    module DatePeriod
      ONE_DAY = 1
      THIRTY_DAY = 2
      SIXTY_DAY = 3
      NINETY_DAY = 4
      MONTH_TO_DATE = 5
      VALUE_MAP = {1 => "ONE_DAY", 2 => "THIRTY_DAY", 3 => "SIXTY_DAY", 4 => "NINETY_DAY", 5 => "MONTH_TO_DATE"}
      VALID_VALUES = Set.new([ONE_DAY, THIRTY_DAY, SIXTY_DAY, NINETY_DAY, MONTH_TO_DATE]).freeze
    end

    class ManagedDeviceStats; end

    class AudienceStats; end

    class DestinationStats; end

    class ReferrerStats; end

    class ManagedDeviceStats
      include ::Thrift::Struct, ::Thrift::Struct_Union
      INCLUSIVE_END_DATE = 1
      DATE_PERIOD = 2
      LCA_ID = 3
      DST_CUSTOMER_ID = 4
      FIELD_ID = 5
      VALUE_ID = 6
      COOKIE_ID_HLL_COUNTER = 21
      AUDIENCE_KEY_HLL_COUNTER = 22

      FIELDS = {
        INCLUSIVE_END_DATE => {:type => ::Thrift::Types::I32, :name => 'inclusive_end_date'},
        DATE_PERIOD => {:type => ::Thrift::Types::I32, :name => 'date_period', :enum_class => ::Liveramp::Stats::DatePeriod},
        LCA_ID => {:type => ::Thrift::Types::I32, :name => 'lca_id'},
        DST_CUSTOMER_ID => {:type => ::Thrift::Types::I32, :name => 'dst_customer_id', :optional => true},
        FIELD_ID => {:type => ::Thrift::Types::I32, :name => 'field_id', :optional => true},
        VALUE_ID => {:type => ::Thrift::Types::I32, :name => 'value_id', :optional => true},
        # Attributes 21-22
        COOKIE_ID_HLL_COUNTER => {:type => ::Thrift::Types::STRING, :name => 'cookie_id_hll_counter', :binary => true},
        AUDIENCE_KEY_HLL_COUNTER => {:type => ::Thrift::Types::STRING, :name => 'audience_key_hll_counter', :binary => true}
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field inclusive_end_date is unset!') unless @inclusive_end_date
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field date_period is unset!') unless @date_period
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field lca_id is unset!') unless @lca_id
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field cookie_id_hll_counter is unset!') unless @cookie_id_hll_counter
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field audience_key_hll_counter is unset!') unless @audience_key_hll_counter
        unless @date_period.nil? || ::Liveramp::Stats::DatePeriod::VALID_VALUES.include?(@date_period)
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field date_period!')
        end
      end

      ::Thrift::Struct.generate_accessors self
    end

    class AudienceStats
      include ::Thrift::Struct, ::Thrift::Struct_Union
      INCLUSIVE_END_DATE = 1
      DATE_PERIOD = 2
      CUSTOMER = 3
      DATA_PARTNER = 4
      DESTINATION_CUSTOMER = 5
      DESTINATION_TYPE = 6
      DESTINATION = 7
      FIELD = 8
      FIELD_VALUE = 9
      HEID_HLL_COUNTER = 21
      COOKIE_ID_HLL_COUNTER = 22
      TOTAL_REQUESTS = 23
      COOKIEABLE_COOKIE_HLL_COUNTER = 24
      AUDIENCE_MEMBER_HLL_COUNTER = 25

      FIELDS = {
        INCLUSIVE_END_DATE => {:type => ::Thrift::Types::I32, :name => 'inclusive_end_date'},
        DATE_PERIOD => {:type => ::Thrift::Types::I32, :name => 'date_period', :enum_class => ::Liveramp::Stats::DatePeriod},
        CUSTOMER => {:type => ::Thrift::Types::I32, :name => 'customer'},
        DATA_PARTNER => {:type => ::Thrift::Types::I32, :name => 'data_partner', :optional => true},
        DESTINATION_CUSTOMER => {:type => ::Thrift::Types::I32, :name => 'destination_customer', :optional => true},
        DESTINATION_TYPE => {:type => ::Thrift::Types::STRING, :name => 'destination_type', :optional => true},
        DESTINATION => {:type => ::Thrift::Types::I32, :name => 'destination', :optional => true},
        FIELD => {:type => ::Thrift::Types::I32, :name => 'field', :optional => true},
        FIELD_VALUE => {:type => ::Thrift::Types::I32, :name => 'field_value', :optional => true},
        # Attributes 21-25
        HEID_HLL_COUNTER => {:type => ::Thrift::Types::STRING, :name => 'heid_hll_counter', :binary => true, :optional => true},
        COOKIE_ID_HLL_COUNTER => {:type => ::Thrift::Types::STRING, :name => 'cookie_id_hll_counter', :binary => true, :optional => true},
        TOTAL_REQUESTS => {:type => ::Thrift::Types::I64, :name => 'total_requests'},
        COOKIEABLE_COOKIE_HLL_COUNTER => {:type => ::Thrift::Types::STRING, :name => 'cookieable_cookie_hll_counter', :binary => true, :optional => true},
        AUDIENCE_MEMBER_HLL_COUNTER => {:type => ::Thrift::Types::STRING, :name => 'audience_member_hll_counter', :binary => true, :optional => true}
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field inclusive_end_date is unset!') unless @inclusive_end_date
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field date_period is unset!') unless @date_period
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field customer is unset!') unless @customer
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field total_requests is unset!') unless @total_requests
        unless @date_period.nil? || ::Liveramp::Stats::DatePeriod::VALID_VALUES.include?(@date_period)
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field date_period!')
        end
      end

      ::Thrift::Struct.generate_accessors self
    end

    class DestinationStats
      include ::Thrift::Struct, ::Thrift::Struct_Union
      INCLUSIVE_END_DATE = 1
      DATE_PERIOD = 2
      DESTINATION_TYPE = 3
      DESTINATION = 4
      TOTAL_REQUESTS = 11
      COOKIE_ID_HLL_COUNTER = 12
      COOKIE_WITH_HEID_HLL_COUNTER = 13
      HEID_HLL_COUNTER = 14

      FIELDS = {
        INCLUSIVE_END_DATE => {:type => ::Thrift::Types::I32, :name => 'inclusive_end_date'},
        DATE_PERIOD => {:type => ::Thrift::Types::I32, :name => 'date_period', :enum_class => ::Liveramp::Stats::DatePeriod},
        DESTINATION_TYPE => {:type => ::Thrift::Types::I16, :name => 'destination_type'},
        DESTINATION => {:type => ::Thrift::Types::I32, :name => 'destination'},
        # Attributes 11-14
        TOTAL_REQUESTS => {:type => ::Thrift::Types::I64, :name => 'total_requests'},
        COOKIE_ID_HLL_COUNTER => {:type => ::Thrift::Types::STRING, :name => 'cookie_id_hll_counter', :binary => true},
        COOKIE_WITH_HEID_HLL_COUNTER => {:type => ::Thrift::Types::STRING, :name => 'cookie_with_heid_hll_counter', :binary => true},
        HEID_HLL_COUNTER => {:type => ::Thrift::Types::STRING, :name => 'heid_hll_counter', :binary => true}
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field inclusive_end_date is unset!') unless @inclusive_end_date
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field date_period is unset!') unless @date_period
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field destination_type is unset!') unless @destination_type
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field destination is unset!') unless @destination
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field total_requests is unset!') unless @total_requests
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field cookie_id_hll_counter is unset!') unless @cookie_id_hll_counter
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field cookie_with_heid_hll_counter is unset!') unless @cookie_with_heid_hll_counter
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field heid_hll_counter is unset!') unless @heid_hll_counter
        unless @date_period.nil? || ::Liveramp::Stats::DatePeriod::VALID_VALUES.include?(@date_period)
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field date_period!')
        end
      end

      ::Thrift::Struct.generate_accessors self
    end

    class ReferrerStats
      include ::Thrift::Struct, ::Thrift::Struct_Union
      INCLUSIVE_END_DATE = 1
      DATE_PERIOD = 2
      CUSTOMER = 3
      REFERRER = 4
      COUNTRY_CODE = 5
      TOTAL_REQUESTS = 11
      TOTAL_COOKIEABLE_REQUESTS = 12
      TOTAL_USA_REQUESTS = 13
      MONTHLY_NEW_ANAS = 14
      COOKIEABLE_HLL_COUNTER = 15
      COOKIEABLE_WITH_HEID_HLL_COUNTER = 16
      HEID_HLL_COUNTER = 17
      RECOOKIES_HEID_HLL_COUNTER = 18
      COOKIE_ID_HLL_COUNTER = 19
      REQUEST_TYPE_COUNTS = 21
      IDENTIFIER_COUNTS = 22
      SUB_DOMAIN_COUNTS = 23
      TOTAL_BAD_REQUESTS = 25
      ASH_ID_HLL_COUNTER = 26
      RECOOKIES_ASH_ID_HLL_COUNTER = 27
      COOKIEABLE_WITH_ASH_ID_HLL_COUNTER = 28

      FIELDS = {
        INCLUSIVE_END_DATE => {:type => ::Thrift::Types::I32, :name => 'inclusive_end_date'},
        DATE_PERIOD => {:type => ::Thrift::Types::I32, :name => 'date_period', :enum_class => ::Liveramp::Stats::DatePeriod},
        CUSTOMER => {:type => ::Thrift::Types::I32, :name => 'customer', :optional => true},
        REFERRER => {:type => ::Thrift::Types::I32, :name => 'referrer', :optional => true},
        COUNTRY_CODE => {:type => ::Thrift::Types::STRING, :name => 'country_code', :optional => true},
        # Attributes 11-19
        TOTAL_REQUESTS => {:type => ::Thrift::Types::I64, :name => 'total_requests'},
        TOTAL_COOKIEABLE_REQUESTS => {:type => ::Thrift::Types::I64, :name => 'total_cookieable_requests'},
        TOTAL_USA_REQUESTS => {:type => ::Thrift::Types::I64, :name => 'total_usa_requests'},
        MONTHLY_NEW_ANAS => {:type => ::Thrift::Types::I64, :name => 'monthly_new_anas'},
        COOKIEABLE_HLL_COUNTER => {:type => ::Thrift::Types::STRING, :name => 'cookieable_hll_counter', :binary => true},
        COOKIEABLE_WITH_HEID_HLL_COUNTER => {:type => ::Thrift::Types::STRING, :name => 'cookieable_with_heid_hll_counter', :binary => true},
        HEID_HLL_COUNTER => {:type => ::Thrift::Types::STRING, :name => 'heid_hll_counter', :binary => true},
        RECOOKIES_HEID_HLL_COUNTER => {:type => ::Thrift::Types::STRING, :name => 'recookies_heid_hll_counter', :binary => true},
        COOKIE_ID_HLL_COUNTER => {:type => ::Thrift::Types::STRING, :name => 'cookie_id_hll_counter', :binary => true},
        # Attributes 21-28
        REQUEST_TYPE_COUNTS => {:type => ::Thrift::Types::STRUCT, :name => 'request_type_counts', :class => ::Liveramp::Util::StringToLongMap},
        IDENTIFIER_COUNTS => {:type => ::Thrift::Types::STRUCT, :name => 'identifier_counts', :class => ::Liveramp::Util::StringToLongMap},
        SUB_DOMAIN_COUNTS => {:type => ::Thrift::Types::STRUCT, :name => 'sub_domain_counts', :class => ::Liveramp::Util::StringToLongMap},
        TOTAL_BAD_REQUESTS => {:type => ::Thrift::Types::I64, :name => 'total_bad_requests', :optional => true},
        ASH_ID_HLL_COUNTER => {:type => ::Thrift::Types::STRING, :name => 'ash_id_hll_counter', :binary => true, :optional => true},
        RECOOKIES_ASH_ID_HLL_COUNTER => {:type => ::Thrift::Types::STRING, :name => 'recookies_ash_id_hll_counter', :binary => true, :optional => true},
        COOKIEABLE_WITH_ASH_ID_HLL_COUNTER => {:type => ::Thrift::Types::STRING, :name => 'cookieable_with_ash_id_hll_counter', :binary => true, :optional => true}
      }

      def struct_fields; FIELDS; end

      def validate
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field inclusive_end_date is unset!') unless @inclusive_end_date
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field date_period is unset!') unless @date_period
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field total_requests is unset!') unless @total_requests
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field total_cookieable_requests is unset!') unless @total_cookieable_requests
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field total_usa_requests is unset!') unless @total_usa_requests
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field monthly_new_anas is unset!') unless @monthly_new_anas
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field cookieable_hll_counter is unset!') unless @cookieable_hll_counter
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field cookieable_with_heid_hll_counter is unset!') unless @cookieable_with_heid_hll_counter
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field heid_hll_counter is unset!') unless @heid_hll_counter
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field recookies_heid_hll_counter is unset!') unless @recookies_heid_hll_counter
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field cookie_id_hll_counter is unset!') unless @cookie_id_hll_counter
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field request_type_counts is unset!') unless @request_type_counts
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field identifier_counts is unset!') unless @identifier_counts
        raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field sub_domain_counts is unset!') unless @sub_domain_counts
        unless @date_period.nil? || ::Liveramp::Stats::DatePeriod::VALID_VALUES.include?(@date_period)
          raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field date_period!')
        end
      end

      ::Thrift::Struct.generate_accessors self
    end

  end
end
