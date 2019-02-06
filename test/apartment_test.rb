require 'pry'
require 'Minitest/autorun'
require 'Minitest/pride'
require './lib/renter'
require './lib/apartment'

class ApartmentTest < Minitest::Test

  def setup
    @a1 = Apartment.new({
      number: "A1", monthly_rent: 1200,
      bathrooms: 1, bedrooms: 1
      })
  end

  def test_apartment_exists
    assert_instance_of Apartment, @a1
  end

  def test_apartment_has_attributes
    assert_equal
  end
end
