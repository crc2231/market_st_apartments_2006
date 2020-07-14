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

  def average_rent
    total = @units.sum {|unit| unit.monthly_rent}
    average_rent = total.to_f / @units.count
  end

  def rented_units
    @units.find_all {|unit| unit.renter != nil}
  end

  def renter_with_highest_rent
    bougie_unit = rented_units.max_by {|unit| unit.monthly_rent}
    bougie_unit.renter
  end

  def units_by_number_of_bedrooms
    rooms = @units.group_by {|unit| unit.bedrooms}
    # room_num = rooms.each do |room|
    #   rooms[bedrooms].number
    # end
  end

end
