require 'pry'
require './lib/renter'

class Apartment
  attr_reader :number

  def initialize(number:, monthly_rent:, bathrooms:, bedrooms:)
    @number = number
  end
end
