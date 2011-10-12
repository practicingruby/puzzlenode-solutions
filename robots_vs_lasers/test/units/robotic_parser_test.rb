require_relative "../test_helper"

describe "Robotic::Parser" do
  it "should process an ASCII conveyor representation" do
    conveyor    = "#|#|#|##\n---X----\n###||###"
    parsed_data = Robotic::Parser.new(conveyor).conveyor_data

    north_side = [:wall, :laser, :wall, :laser, :wall, :laser, :wall, :wall ]
    south_side = [:wall, :wall,  :wall, :laser, :laser, :wall, :wall, :wall ]

    expected_data = { :north_side     => north_side, 
                      :south_side     => south_side, 
                      :robot_position => 3           }

    parsed_data.must_equal(expected_data)
  end
end
