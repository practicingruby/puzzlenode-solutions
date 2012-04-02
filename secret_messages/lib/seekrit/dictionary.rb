require "shellwords"

module Seekrit
  module Dictionary
    def self.include?(word)
      word    = word.downcase
      results = `grep ^#{Shellwords.shellescape(word)}$ /usr/share/dict/words`

      results.chomp == word
    end
  end
end
