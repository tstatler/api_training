=begin
Apcera APIs

REST APIs used to manage an Apcera cluster and its resources. 

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::LogsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'LogsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::LogsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LogsApi' do
    it 'should create an instact of LogsApi' do
      @instance.should be_a(SwaggerClient::LogsApi)
    end
  end

  # unit tests for audit_logs_get
  # Returns audit log items for the cluster.
  # Returns a list of audit log items. 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :authorization 
  # @return [Array<AuditLogItemOld>]
  describe 'audit_logs_get test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

  # unit tests for logs_channel_get
  # Streams logs for the specified channel.
  # 
  # @param channel TBD
  # @param [Hash] opts the optional parameters
  # @option opts [String] :authorization 
  # @return [nil]
  describe 'logs_channel_get test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

end
