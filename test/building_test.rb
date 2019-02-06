require 'pry'
require 'Minitest/autorun'
require 'Minitest/pride'
require './lib/apartment'
require './lib/renter'
require './lib/building'

class BuildingTest < Minitest::Test

  def setup
    @jessie = Renter.new("Jessie")
    @spencer = Renter.new("Spencer")
    @a1 = Apartment.new({
      number: "A1", monthly_rent: 1200,
      bathrooms: 1, bedrooms: 1
      })
    @b2 = Apartment.new({
      number: "B2", monthly_rent: 999,
      bathrooms: 2, bedrooms: 2
      })
    @building = Building.new
    @b2.add_renter(@spencer)
    @a1.add_renter(@jessie)
  end

  def test_building_exists
    assert_instance_of Building, @building
  end

  def test_building_starts_empty
    assert_equal [], @building.units
  end

  def test_building_can_add_units
    @building.add_unit(@a1)
    @building.add_unit(@b2)
    assert_equal [@a1, @b2], @building.units
  end

  def test_building_can_calculate_average_rent
    @building.add_unit(@a1)
    @building.add_unit(@b2)
    assert_equal 1099.5, @building.average_rent
  end

  def test_building_can_find_highest_paying_renter
    @building.add_unit(@a1)
    @building.add_unit(@b2)
    assert_equal @jessie, @building.renter_with_highest_rent
  end
end
