module Robotic
  class Conveyor
    def initialize(conveyor_data)
      raise unless conveyor_data[:north_side].size == conveyor_data[:south_side].size

      @north_side = conveyor_data[:north_side]
      @south_side = conveyor_data[:south_side]
      
      @east_end   = @north_side.size - 1
      @west_end   = 0
    end

    def safest_path_from(position)
      east_damage = damage(:from => position, :to => east_end)  
      west_damage = damage(:from => position, :to => west_end)

      east_damage < west_damage ? :east : :west
    end

    private

    attr_reader :east_end, :west_end, :north_side, :south_side

    def damage(params)
      side_chooser = [north_side, south_side].cycle

      positions_between(params[:from], params[:to]).reduce(0) do |damage, pos_x|
        side = side_chooser.next
        side[pos_x] == :laser ? damage + 1 : damage
      end
    end

    def positions_between(from_pos, to_pos)
      from_pos < to_pos ? from_pos.upto(to_pos) : from_pos.downto(to_pos)
    end
  end
end
