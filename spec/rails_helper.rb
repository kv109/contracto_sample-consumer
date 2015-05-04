# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require 'spec_helper'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'contracto/rspec'

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  Contracto::RSpec.start!(git: 'https://github.com/kv109/contracto-format.git')

  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
end

Callapi::Config.configure do |config|
  config.api_host = 'http://0.0.0.0:54321'
  config.log_level = :none
end
