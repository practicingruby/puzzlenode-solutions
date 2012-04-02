require_relative "helper"
require_relative "../lib/seekrit/cracker"

describe Seekrit::Cracker do
  it "must be able to decode the key" do
    Seekrit::Cracker.new("RLCOPY").decoded_key.must_equal("GARDEN")
  end

  it "must raise an exception if no key is found" do
    -> { Seekrit::Cracker.new("RLCOTY").decoded_key }
       .must_raise(Seekrit::Cracker::KeyError)
  end

  it "must be able to decode the message" do
    cracker = Seekrit::Cracker.new("RLCOPY")

    cracker.decode("IONDVQY DZH QNTY KLQRY")
           .must_equal("COWARDS DIE MANY TIMES")
  end
end
