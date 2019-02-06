require 'pry'
require 'Minitest/autorun'
require 'Minitest/pride'
require './lib/renter'

class RenterTest < Minitest::Test

  def setup
    @jessie = Renter.new("Jessie")
  end

end
