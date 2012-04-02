module Seekrit
  class CaeserCipher 
    def initialize(input)
      @input = input
    end

    def decode(offset)
      mapping = Hash[*("A".."Z").zip(("A".."Z").to_a.rotate(offset)).flatten]

      @input.chars.map { |e| mapping[e] || e }.join
    end

    private

    attr_reader :input
  end
end
