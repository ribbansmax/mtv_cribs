require "minitest/autorun"
require "minitest/pride"
require "./lib/renter"
require "./lib/apartment"
require "./lib/building"
require "pry";

class BuildingTest < Minitest::Test 
  def test_it_exists
    building = Building.new

    assert_instance_of Building, building
  end

  def test_it_can_have_units
    building = Building.new

    assert_equal [], building.units
  end
end