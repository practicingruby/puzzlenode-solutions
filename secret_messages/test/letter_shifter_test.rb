require "minitest/autorun"
require_relative "../lib/seekrit/letter_shifter"

describe Seekrit::LetterShifter do
  it "must shift letters to the right" do
    Seekrit::LetterShifter.shift("A") { 3 }.must_equal("D")  
    Seekrit::LetterShifter.shift("X") { 4 }.must_equal("B")
  end

  it "must shift letters to the left" do
    Seekrit::LetterShifter.shift("A") { -3 }.must_equal("X")
    Seekrit::LetterShifter.shift("X") { -4 }.must_equal("T")
  end

end
