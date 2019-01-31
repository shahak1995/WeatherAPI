require 'json'
require 'httparty'
require 'rspec'
require 'dotenv'
require_relative '../lib/Weather'

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end
