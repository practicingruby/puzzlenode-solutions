module Seekrit
  class VigenereCipher
    def initialize(input)
      @input = input
    end

    def decode(key)
      offsets   = key.chars.map(&:ord).cycle

      @input.chars.map { |c|
        next c unless ("A".."Z").include?(c)
        ("A".ord + ((c.ord - offsets.next) % 26)).chr
      }.join
    end

    private

    attr_accessor :input
  end
end
