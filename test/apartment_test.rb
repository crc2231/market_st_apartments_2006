require 'minitest/autorun'
require 'minitest/pride'
require './lib/apartment'

class ApartmentTest < Minitest::Test

  def test_it_exists
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    assert_instance_of Apartment, unit1
  end

  def test_it_has_a_number
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    assert_equal "A1", unit1.number
  end

  def test_it_has_monthly_rent
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    assert_equal 1200, unit1.monthly_rent
  end

  def test_it_has_bathrooms
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    assert_equal 1, unit1.bathrooms
  end

  def test_it_has_bedrooms
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    assert_equal 1, unit1.bedrooms
  end

  def test_renter_starts_empty
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    assert_equal nil, unit1.renter
  end

  def test_it_can_add_renters
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    renter1 = Renter.new("Jessie")
    unit1.add_renter(renter1)
    assert_equal renter1 , unit1.renter
  end

end