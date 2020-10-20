class Building
  attr_reader :units
  
  def initialize()
    @units = []
  end

  def add_unit(unit)
    @units << unit 
  end 

  def renters
    renters = []
    @units.each do |unit|
      if unit.renter
        renters << unit.renter.name
      end
    end
    renters
  end

  # Unclear from interaction pattern whether this is checking average rent of filled units, of average rent cost. In this I chose to do average rent of all units.
  def average_rent
   average_rent = 0
   @units.each do |unit|
    average_rent += unit.monthly_rent.to_f
   end
   average_rent / @units.length.to_f
  end

  def rented_units
    units = []
    @units.each do |unit|
      if unit.renter
        units << unit
      end
    end
    units
  end
end 