require_relative "letter_shifter"

module Seekrit
  class VigenereCipher
    def initialize(input)
      @input = input
    end

    def decode(key)
      offsets = key.chars.map { |x| "A".ord - x.ord }.cycle

      input.chars.map { |e| LetterShifter.shift(e) { offsets.next } }.join
    end

    private

    attr_accessor :input
  end
end
