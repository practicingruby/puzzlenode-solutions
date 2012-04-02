require "minitest/autorun"
require_relative "../lib/seekrit/dictionary"

describe Seekrit::Dictionary do
  it "must be able to identify valid words" do
    Seekrit::Dictionary.must_include("cat")
    Seekrit::Dictionary.must_include("category")
    Seekrit::Dictionary.must_include("explosion")
  end

  it "must be able to identify invalid words" do
    Seekrit::Dictionary.wont_include("roflcopters")
  end
end
