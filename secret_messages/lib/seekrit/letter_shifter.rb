module Seekrit
  module LetterShifter
    ALPHABET = ("A".."Z").to_a

    def self.shift(letter, &offset)
      return letter unless ALPHABET.include?(letter)

      letter_position = (letter.ord - "A".ord)

      ALPHABET[(letter_position + offset.call) % 26]
    end
  end
end
