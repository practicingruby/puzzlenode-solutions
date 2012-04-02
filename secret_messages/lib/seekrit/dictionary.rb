module Seekrit
  class << (Dictionary = Object.new)
    def inspect
      "Seekrit::Dictionary"
    end

    def include?(word)
      !!File.foreach("/usr/share/dict/words").find { |l| l =~ /^#{word}$/ }
    end
  end
end
