require "minitest/autorun"
require_relative "../lib/seekrit/letter_shifter"

describe Seekrit::LetterShifter do
  it "must shift letters to the right" do
    Seekrit::LetterShifter.shift("A", 3).must_equal("D")  
  end

  it "must shift letters to the left" do
    Seekrit::LetterShifter.shift("A", -3).must_equal("X")
  end

end
