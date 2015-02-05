require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

require 'minitest/autorun'
require 'webmachine/test'

begin
  require 'pry-byebug'
rescue LoadError
  # If you want to debug, gem install byebug
end

require_relative '../lib/oss_front'
