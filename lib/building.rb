require 'pry'
require './lib/apartment'
require './lib/renter'

class Building
  attr_reader :units

  def initialize
    @units = []
  end

  def add_unit(apartment)
    @units << apartment
  end

  def average_rent
    total = @units.map do |unit|
      unit.monthly_rent
    end
    total.sum.to_f / @units.count
  end
end