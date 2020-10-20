require "minitest/autorun"
require "minitest/pride"
require "./lib/renter"
require "./lib/apartment"
require "pry";

class RenterTest < Minitest::Test
  def test_renter_exists
    renter1 = Renter.new("Jessie")

    assert_instance_of Renter, renter1
  end
end