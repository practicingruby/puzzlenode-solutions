require "minitest/autorun"
require_relative "../lib/seekrit/caeser_cipher"

describe Seekrit::CaeserCipher do
  it "must be able to use an encryption key to decode a string" do
    Seekrit::CaeserCipher.new("RLCOPY").decode(15).must_equal("GARDEN")
  end  
end
