require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

require 'minitest/autorun'
require 'webmachine/test'
require 'pry-byebug'

require_relative '../lib/oss_front'
