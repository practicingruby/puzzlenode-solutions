require_relative "helper"
require_relative "../lib/seekrit/vigenere_cipher"

describe Seekrit::VigenereCipher do
  it "must be able to decode text using an encryption key" do
    cipher = Seekrit::VigenereCipher.new("IONDVQY DZH QNTY KLQRY")

    cipher.decode("GARDEN").must_equal("COWARDS DIE MANY TIMES")
  end
end
