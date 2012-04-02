require_relative "caeser_cipher"
require_relative "dictionary"

module Seekrit
  class Cracker
    KeyError = Class.new(StandardError)

    def initialize(key)
      @encoded_key  = key
    end

    def decoded_key
      cipher = CaeserCipher.new(@encoded_key)

      cipher.shifts.find { |e| Dictionary.include?(e) } || raise(KeyError)
    end
  end
end

