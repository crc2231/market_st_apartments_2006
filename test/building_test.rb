require 'minitest/autorun'
require 'minitest/pride'
require './lib/Building'

class BuildingTest < Minitest::Test

  def test_it_exists
    building = Building.new
    assert_instance_of Building, building
  end

end
