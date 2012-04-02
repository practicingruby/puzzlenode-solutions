module Seekrit
  class CaeserCipher 
    def initialize(input)
      @input = input
    end

    def decode(offset)
      mapping = Hash[*("A".."Z").zip(("A".."Z").to_a.rotate(offset)).flatten]

      input.chars.map { |e| mapping[e] || e }.join
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
