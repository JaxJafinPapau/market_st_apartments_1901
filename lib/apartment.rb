require 'pry'
require './lib/renter'

class Apartment
  attr_reader :number,
              :monthly_rent,
              :bathrooms,
              :bedrooms

  def initialize(number:, monthly_rent:, bathrooms:, bedrooms:)
    @number = number
    @monthly_rent = monthly_rent
    @bathrooms = bathrooms
    @bedrooms = bedrooms
    @renter = nil
  end
end
