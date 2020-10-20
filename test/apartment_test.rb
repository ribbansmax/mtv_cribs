require "minitest/autorun"
require "minitest/pride"
require "./lib/renter"
require "./lib/apartment"
require "pry";

class ApartmentTest < Minitest::Test
  def test_apartment_exists
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_instance_of Apartment, unit1
  end

  # renter1 = Renter.new("Jessie")
end

