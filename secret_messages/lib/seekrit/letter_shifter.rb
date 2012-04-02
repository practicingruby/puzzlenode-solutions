module Seekrit
  class << (LetterShifter = Object.new)
    ALPHABET = ("A".."Z").to_a

    def shift(letter, offset)
      letter_position = (letter.ord - "A".ord)

      ALPHABET[letter_position + offset]
    end
  end
end
