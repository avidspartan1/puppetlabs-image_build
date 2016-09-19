require 'puppetlabs_spec_helper/module_spec_helper'
require 'simplecov'
require 'simplecov-console'

# automatically load any shared examples or contexts
Dir["./spec/support/**/*.rb"].sort.each { |f| require f }

SimpleCov.start do
  add_filter '/spec'
  formatter SimpleCov::Formatter::MultiFormatter.new([
    SimpleCov::Formatter::HTMLFormatter,
    SimpleCov::Formatter::Console
  ])
end

RSpec.configure do |config|
  config.mock_with :rspec
end
