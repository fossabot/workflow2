#
# Autogenerated by Thrift Compiler (0.11.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'
require File.join File.dirname(__FILE__), 'hadoop_testing_types'

module Liveramp
  module HadoopTesting
    module TestService
      class Client
        include ::Thrift::Client

        def get_value()
          send_get_value()
          return recv_get_value()
        end

        def send_get_value()
          send_message('get_value', Get_value_args)
        end

        def recv_get_value()
          result = receive_message(Get_value_result)
          return result.success unless result.success.nil?
          raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'get_value failed: unknown result')
        end

      end

      class Processor
        include ::Thrift::Processor

        def process_get_value(seqid, iprot, oprot)
          args = read_args(iprot, Get_value_args)
          result = Get_value_result.new()
          result.success = @handler.get_value()
          write_result(result, oprot, 'get_value', seqid)
        end

      end

      # HELPER FUNCTIONS AND STRUCTURES

      class Get_value_args
        include ::Thrift::Struct, ::Thrift::Struct_Union

        FIELDS = {

        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class Get_value_result
        include ::Thrift::Struct, ::Thrift::Struct_Union
        SUCCESS = 0

        FIELDS = {
          SUCCESS => {:type => ::Thrift::Types::I32, :name => 'success'}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

    end

  end
end
