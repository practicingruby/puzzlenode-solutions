require_relative "../lib/seekrit/cracker"
require "minitest/autorun"

describe Seekrit::Cracker do
  it "must be able to determine the key" do
    Seekrit::Cracker.new("RLCOPY").decoded_key.must_equal("GARDEN")
  end

  it "must raise an exception if no key is found" do
    -> { Seekrit::Cracker.new("RLCOTY").decoded_key }
       .must_raise(Seekrit::Cracker::KeyError)
  end
end
