require './lib/renter'

class Apartment

  def initialize(details)
    @number = details[:number]
    @monthly_rent = details[:monthly_rent]
    @bathrooms = details[:bathrooms]
    @bedrooms = details[:bedrooms]
  end

end
