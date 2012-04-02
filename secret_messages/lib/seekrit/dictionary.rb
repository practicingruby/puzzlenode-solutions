require "shellwords"

module Seekrit
  class << (Dictionary = Object.new)
    def inspect
      "Seekrit::Dictionary"
    end

    def include?(word)
      word    = word.downcase
      results = `grep ^#{Shellwords.shellescape(word)}$ /usr/share/dict/words`

      results.chomp == word
    end
  end
end
