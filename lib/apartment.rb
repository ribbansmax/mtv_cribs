class Apartment

  def initialize(specs)
    @number = specs[:number]
    @monthly_rent = specs[:monthly_rent]
    @bathrooms = specs[:bathrooms]
    @bedrooms = specs[:bedrooms]
  end
end 