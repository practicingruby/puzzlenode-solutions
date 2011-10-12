module Robotic
  class Application
    def initialize(args)
      @input_file = args.first
    end

    attr_accessor :output

    def run
      File.read(@input_file).chomp.split("\n\n").each do |conveyor_text|
        data     = Robotic::Parser.new(conveyor_text).conveyor_data
        conveyor = Robotic::Conveyor.new(:north_side => data[:north_side],
                                         :south_side => data[:south_side])

        case conveyor.safest_path_from(data[:robot_position])
        when :east
          puts "GO EAST"
        when :west
          puts "GO WEST"
        end
      end
    end
  end
end
