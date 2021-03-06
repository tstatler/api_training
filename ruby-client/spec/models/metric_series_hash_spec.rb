=begin
Apcera APIs

REST APIs used to manage an Apcera cluster and its resources. 

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::MetricSeriesHash
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'MetricSeriesHash' do
  before do
    # run before each test
    @instance = SwaggerClient::MetricSeriesHash.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MetricSeriesHash' do
    it 'should create an instact of MetricSeriesHash' do
      @instance.should be_a(SwaggerClient::MetricSeriesHash) 
    end
  end
end

