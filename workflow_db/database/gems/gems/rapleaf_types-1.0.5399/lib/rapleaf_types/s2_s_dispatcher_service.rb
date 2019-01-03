#
# Autogenerated by Thrift Compiler (0.11.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'
require File.join File.dirname(__FILE__), 's2s_integrations_types'

module Rapleaf
  module Types
    module S2SIntegrations
      module S2SDispatcherService
        class Client
          include ::Thrift::Client

          def get_job_logs(job_id)
            send_get_job_logs(job_id)
            return recv_get_job_logs()
          end

          def send_get_job_logs(job_id)
            send_message('get_job_logs', Get_job_logs_args, :job_id => job_id)
          end

          def recv_get_job_logs()
            result = receive_message(Get_job_logs_result)
            return result.success unless result.success.nil?
            raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'get_job_logs failed: unknown result')
          end

          def get_running_job_stacktrace(job_id)
            send_get_running_job_stacktrace(job_id)
            return recv_get_running_job_stacktrace()
          end

          def send_get_running_job_stacktrace(job_id)
            send_message('get_running_job_stacktrace', Get_running_job_stacktrace_args, :job_id => job_id)
          end

          def recv_get_running_job_stacktrace()
            result = receive_message(Get_running_job_stacktrace_result)
            return result.success unless result.success.nil?
            raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'get_running_job_stacktrace failed: unknown result')
          end

          def kill_running_job(job_id)
            send_kill_running_job(job_id)
            return recv_kill_running_job()
          end

          def send_kill_running_job(job_id)
            send_message('kill_running_job', Kill_running_job_args, :job_id => job_id)
          end

          def recv_kill_running_job()
            result = receive_message(Kill_running_job_result)
            return result.success unless result.success.nil?
            raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'kill_running_job failed: unknown result')
          end

        end

        class Processor
          include ::Thrift::Processor

          def process_get_job_logs(seqid, iprot, oprot)
            args = read_args(iprot, Get_job_logs_args)
            result = Get_job_logs_result.new()
            result.success = @handler.get_job_logs(args.job_id)
            write_result(result, oprot, 'get_job_logs', seqid)
          end

          def process_get_running_job_stacktrace(seqid, iprot, oprot)
            args = read_args(iprot, Get_running_job_stacktrace_args)
            result = Get_running_job_stacktrace_result.new()
            result.success = @handler.get_running_job_stacktrace(args.job_id)
            write_result(result, oprot, 'get_running_job_stacktrace', seqid)
          end

          def process_kill_running_job(seqid, iprot, oprot)
            args = read_args(iprot, Kill_running_job_args)
            result = Kill_running_job_result.new()
            result.success = @handler.kill_running_job(args.job_id)
            write_result(result, oprot, 'kill_running_job', seqid)
          end

        end

        # HELPER FUNCTIONS AND STRUCTURES

        class Get_job_logs_args
          include ::Thrift::Struct, ::Thrift::Struct_Union
          JOB_ID = 1

          FIELDS = {
            JOB_ID => {:type => ::Thrift::Types::I64, :name => 'job_id'}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class Get_job_logs_result
          include ::Thrift::Struct, ::Thrift::Struct_Union
          SUCCESS = 0

          FIELDS = {
            SUCCESS => {:type => ::Thrift::Types::STRING, :name => 'success'}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class Get_running_job_stacktrace_args
          include ::Thrift::Struct, ::Thrift::Struct_Union
          JOB_ID = 1

          FIELDS = {
            JOB_ID => {:type => ::Thrift::Types::I64, :name => 'job_id'}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class Get_running_job_stacktrace_result
          include ::Thrift::Struct, ::Thrift::Struct_Union
          SUCCESS = 0

          FIELDS = {
            SUCCESS => {:type => ::Thrift::Types::STRING, :name => 'success'}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class Kill_running_job_args
          include ::Thrift::Struct, ::Thrift::Struct_Union
          JOB_ID = 1

          FIELDS = {
            JOB_ID => {:type => ::Thrift::Types::I64, :name => 'job_id'}
          }

          def struct_fields; FIELDS; end

          def validate
          end

          ::Thrift::Struct.generate_accessors self
        end

        class Kill_running_job_result
          include ::Thrift::Struct, ::Thrift::Struct_Union
          SUCCESS = 0

          FIELDS = {
            SUCCESS => {:type => ::Thrift::Types::BOOL, :name => 'success'}
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