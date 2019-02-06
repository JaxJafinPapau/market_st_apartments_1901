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

  def renter_with_highest_rent
    highest = @units.max do |unit|
      unit.monthly_rent <=> unit.monthly_rent
    end
    highest.renter
  end

  def annual_breakdown
    annual_revenues = {}
    @units.each do |unit|
      annual_revenues.store(unit.renter.name, unit.monthly_rent * 12)
    end
    annual_revenues
  end
end
