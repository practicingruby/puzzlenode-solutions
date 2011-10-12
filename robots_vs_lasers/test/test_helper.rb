require "stringio"

gem "minitest" if RUBY_VERSION < "1.9.3"

require "minitest/autorun"

require_relative "../lib/robotic"

ROBOTIC_DATA_DIR = "#{File.dirname(__FILE__)}/../data/"
