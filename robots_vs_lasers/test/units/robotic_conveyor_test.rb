require_relative "../test_helper"

describe "Robotic::Conveyor" do
  it "must choose west when west is less damaging than east"  do
    # data/sample-input.txt scenario #1
    north_side = [:wall, :laser, :wall, :laser, :wall, :laser, :wall, :wall ]
    south_side = [:wall, :wall,  :wall, :laser, :laser, :wall, :wall, :wall ]

    conveyor_data = { :north_side     => north_side, 
                      :south_side     => south_side }

    conveyor = Robotic::Conveyor.new(conveyor_data)
    
    conveyor.safest_path_from(3).must_equal(:west)
  end

  it "must choose east when east is less damaging than west" do
    # data/sample-input.txt scenario #2
    north_side = [:wall, :wall, :laser, :wall, :laser, :wall, :laser, :wall ]
    south_side = [:wall, :wall, :wall,  :laser, :laser, :wall, :wall, :wall ]

    conveyor_data = { :north_side     => north_side, 
                      :south_side     => south_side }

    conveyor = Robotic::Conveyor.new(conveyor_data)

    conveyor.safest_path_from(4).must_equal(:east)
  end

  it "must choose west when damage is equal in both directions" do
    # data/sample-input.txt scenario #3
    north_side = [:wall, :wall, :laser, :wall, :laser, :wall, :laser, :wall ]
    south_side = [:wall, :wall,  :wall, :laser, :laser, :laser, :wall, :wall ]

    conveyor_data = { :north_side     => north_side, 
                      :south_side     => south_side }

    conveyor = Robotic::Conveyor.new(conveyor_data)

    conveyor.safest_path_from(4).must_equal(:west)
  end
end
