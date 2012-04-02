require_relative "letter_shifter"

module Seekrit
  class CaeserCipher 
    def initialize(input)
      @input = input
    end

    def decode(offset)
      input.chars.map { |e| LetterShifter.shift(e) { offset } }.join
    end

    def shifts
      Enumerator.new do |yielder|
        (0..25).each { |i| yielder.yield(decode(i)) }
      end
    end

    private

    attr_reader :input
  end
end
