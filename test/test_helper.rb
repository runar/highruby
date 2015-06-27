ENV['rack_env'] = 'test'

require 'codeclimate-test-reporter'
CodeClimate::TestReporter.start

require 'bundler'
Bundler.require :default, :test

require 'minitest/autorun'
require 'minitest/osx'
require 'minitest/pride'

require_relative '../app/highruby'

class UnitTest < Minitest::Unit::TestCase
  include Rack::Test::Methods

  def app
    Highruby
  end
end
