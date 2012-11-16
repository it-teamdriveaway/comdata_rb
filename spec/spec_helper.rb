require 'rspec'
require 'savon'
require 'savon_spec'

RSpec.configure do |config|
  config.include Savon::Spec::Macros
  HTTPI.log = true
end