#
# Autogenerated by Thrift Compiler (0.11.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'
require File.join File.dirname(__FILE__), 'servile_types'

module Liveramp
  module Types
    module Servile
      module RequestCoordinatorService
        class Client
          include ::Thrift::Client

          def get_next_request()
            send_get_next_request()
            return recv_get_next_request()
          end

          def send_get_next_request()
            send_message('get_next_request', Get_next_request_args)
          end

          def recv_get_next_request()
            result = receive_message(Get_next_request_result)
            return result.success unless result.success.nil?
            raise result.ioe unless result.ioe.nil?
            raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'get_next_request failed: unknown result')
          end

          def update_status(request_id, status)
            send_update_status(request_id, status)
            recv_update_status()
          end

          def send_update_status(request_id, status)
            send_message('update_status', Update_status_args, :request_id => request_id, :status => status)
          end

          def recv_update_status()
            result = receive_message(Update_status_result)
            raise result.ioe unless result.ioe.nil?
            return
          end

        end

        class Processor
          include ::Thrift::Processor

          def process_get_next_request(seqid, iprot, oprot)
            args = read_args(iprot, Get_next_request_args)
            result = Get_next_request_result.new()
            begin
              result.success = @handler.get_next_request()
            rescue ::Liveramp::Util::InputOutputException => ioe
              result.ioe = ioe
            end
            write_result(result, oprot, 'get_next_request', seqid)
          end

          def process_update_status(seqid, iprot, oprot)
            args = read_args(iprot, Update_status_args)
            result = Update_status_result.new()
            begin
              @handler.update_status(args.request_id, args.status)
            rescue ::Liveramp::Util::InputOutputException => ioe
              result.ioe = ioe
            end
            write_result(result, oprot, 'update_status', seqid)
          end

        end

        # HELPER FUNCTIONS AND STRUCTURES

        class Get_next_request_args
          include ::Thrift::Struct, ::Thrift::Struct_Union

          FIELDS = {

          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class Get_next_request_result
          include ::Thrift::Struct, ::Thrift::Struct_Union
          SUCCESS = 0
          IOE = 1

          FIELDS = {
            SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => ::Liveramp::Types::Servile::OptionalRequestId},
            IOE => {:type => ::Thrift::Types::STRUCT, :name => 'ioe', :class => ::Liveramp::Util::InputOutputException}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class Update_status_args
          include ::Thrift::Struct, ::Thrift::Struct_Union
          REQUEST_ID = 1
          STATUS = 2

          FIELDS = {
            REQUEST_ID => {:type => ::Thrift::Types::I64, :name => 'request_id'},
            STATUS => {:type => ::Thrift::Types::I32, :name => 'status', :enum_class => ::Liveramp::Types::Servile::ServiceRequestStatus}
          }

          def struct_fields; FIELDS; end

          def validate
            unless @status.nil? || ::Liveramp::Types::Servile::ServiceRequestStatus::VALID_VALUES.include?(@status)
              raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Invalid value of field status!')
            end
          end

          ::Thrift::Struct.generate_accessors self
        end

        class Update_status_result
          include ::Thrift::Struct, ::Thrift::Struct_Union
          IOE = 1

          FIELDS = {
            IOE => {:type => ::Thrift::Types::STRUCT, :name => 'ioe', :class => ::Liveramp::Util::InputOutputException}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

      end

    end
  end
end
