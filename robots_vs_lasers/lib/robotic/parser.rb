module Robotic
  class Parser
    CONVEYOR_SYMBOLS = { "#" => :wall, "|" => :laser }
    ROBOT_SYMBOL     = "X"

    def initialize(text)
      @text = text
    end

    def conveyor_data
      north, middle, south = @text.split
      { :north_side     => wall_data(north),
        :south_side     => wall_data(south),
        :robot_position => middle.index(ROBOT_SYMBOL) }
    end

    private

    def wall_data(wall_text)
      wall_text.chars.map { |e| CONVEYOR_SYMBOLS[e] }
    end
  end
end
