require "simplecov"

SimpleCov.start

require_relative "helper"

require_relative "caeser_cipher_test"
require_relative "vigenere_cipher_test"
require_relative "dictionary_test"
require_relative "cracker_test"
require_relative "letter_shifter_test"

require_relative "acceptance_test"
