require './lib/apartment'

class Building
attr_reader :units

  def initialize
    @units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def renters
    renter_array = []
    @units.each do |unit|
      if unit.renter != nil
        renter_array << unit.renter.name
      end
    end
    renter_array
  end

end
