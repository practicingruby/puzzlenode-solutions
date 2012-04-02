require_relative "helper"
require_relative "../lib/seekrit/caeser_cipher"

describe Seekrit::CaeserCipher do
  it "must be able to use an encryption key to decode a string" do
    Seekrit::CaeserCipher.new("RLCOPY").decode(15).must_equal("GARDEN")
  end  

  it "must be able to generate shifts" do
    Seekrit::CaeserCipher.new("RLCOPY").shifts.include?("GARDEN")
  end
end
