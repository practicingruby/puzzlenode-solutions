module Seekrit
  class << (LetterShifter = Object.new)
    ALPHABET = ("A".."Z").to_a

    def shift(letter, &offset)
      return letter unless ALPHABET.include?(letter)

      letter_position = (letter.ord - "A".ord)

      ALPHABET[(letter_position + offset.call) % 26]
    end
  end
end
