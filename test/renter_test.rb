require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter'

class RenterTest < Minitest::Test

  def test_it_exists
    renter = Renter.new("Jessie")
    assert_instance_of Renter, renter
  end

  def test_it_has_a_name
    renter = Renter.new("Jessie")
    assert_equal "Jessie", renter.name
  end

end
