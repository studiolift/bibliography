$LOAD_PATH.unshift File.dirname(__FILE__)
require 'rspec'
require 'bibliography'

RSpec.configure do |c|
  c.order = "rand"
end
