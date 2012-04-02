module Seekrit
  class VigenereCipher
    def initialize(input)
      @input = input
    end

    def decode(key)
      offsets_enum = offsets(key).cycle

      @input.chars.map { |c|
        next c unless ("A".."Z").include?(c)
        (((c.ord - "A".ord) - offsets_enum.next) % 26 + "A".ord).chr
      }.join
    end

    private

    def offsets(key)
      key.chars.map { |x| (x.ord - "A".ord) }
    end

    attr_accessor :input
  end
end
