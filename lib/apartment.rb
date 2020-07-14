require './lib/renter'

class Apartment
  attr_reader :number, :monthly_rent, :bathrooms, :bedrooms, :renter

  def initialize(details)
    @number = details[:number]
    @monthly_rent = details[:monthly_rent]
    @bathrooms = details[:bathrooms]
    @bedrooms = details[:bedrooms]
    @renter = details[renter: nil]
  end

  def add_renter(new_renter)
    @renter = new_renter
  end

end
