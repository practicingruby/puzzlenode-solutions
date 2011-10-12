require_relative "../test_helper"

describe "Robotic::Conveyor" do
  it "must be able to compute the number of times the lasers fire" do
    # data/sample-input.txt scenario #1
    north_side = [:wall, :laser, :wall, :laser, :wall, :laser, :wall, :wall ]
    south_side = [:wall, :wall,  :wall, :laser, :laser, :wall, :wall, :wall ]

    conveyor_data = { :north_side     => north_side, 
                      :south_side     => south_side }

    conveyor = Robotic::Conveyor.new(conveyor_data)
    
    conveyor.west_damage_from(3).must_equal(2)
    conveyor.east_damage_from(3).must_equal(3)
  end

  it "must be able to determine when west is the safest path" do
    # data/sample-input.txt scenario #1
    north_side = [:wall, :laser, :wall, :laser, :wall, :laser, :wall, :wall ]
    south_side = [:wall, :wall,  :wall, :laser, :laser, :wall, :wall, :wall ]

    conveyor_data = { :north_side     => north_side, 
                      :south_side     => south_side }

    conveyor = Robotic::Conveyor.new(conveyor_data)
    
    conveyor.safest_path_from(3).must_equal(:west)
    conveyor.east_damage_from(3).must_be :>, conveyor.west_damage_from(3)
  end

  it "must be able to determine when east is the safest path" do
    # data/sample-input.txt scenario #2
    north_side = [:wall, :wall, :laser, :wall, :laser, :wall, :laser, :wall ]
    south_side = [:wall, :wall,  :wall, :laser, :laser, :wall, :wall, :wall ]

    conveyor_data = { :north_side     => north_side, 
                      :south_side     => south_side }

    conveyor = Robotic::Conveyor.new(conveyor_data)

    conveyor.safest_path_from(4).must_equal(:east)
    conveyor.east_damage_from(4).must_be :<, conveyor.west_damage_from(4)
  end

  it "must default to west when damage is equal in both directions" do
    # data/sample-input.txt scenario #3
    north_side = [:wall, :wall, :laser, :wall, :laser, :wall, :laser, :wall ]
    south_side = [:wall, :wall,  :wall, :laser, :laser, :laser, :wall, :wall ]

    conveyor_data = { :north_side     => north_side, 
                      :south_side     => south_side }

    conveyor = Robotic::Conveyor.new(conveyor_data)

    conveyor.safest_path_from(4).must_equal(:west)
    conveyor.east_damage_from(4).must_equal(conveyor.west_damage_from(4))
  end
end
