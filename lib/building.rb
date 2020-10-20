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

  def renter_with_highest_rent
    rented_units = rented_units()
    highest_unit = rented_units.max_by do |unit|
      unit.monthly_rent
    end
    highest_unit.renter
  end

  def units_by_number_of_bedrooms
    units = {}
    num_bedrooms = []
    @units.each do |unit|
      num_bedrooms << unit.bedrooms
    end
    num_bedrooms.uniq!
    num_bedrooms.each do |bedrooms|
      numbers_array = []
      @units.each do |unit|
        if unit.bedrooms == bedrooms
          numbers_array << unit.number
        end
      end
      units[bedrooms] = numbers_array
    end
    units
  end

  def annual_breakdown
    rented_units = rented_units()
    annual_breakdown = {}
    rented_units.each do |unit|
      annual_breakdown[unit.renter.name] = (unit.monthly_rent * 12)
    end
    annual_breakdown
  end

  def rooms_by_renter
    rented_units = rented_units()
    rooms_by_renter = {}
    rented_units.each do |unit|
      unit_breakdown = {}
      unit_breakdown[:bathrooms] = unit.bathrooms
      unit_breakdown[:bedrooms] = unit.bedrooms
      rooms_by_renter[unit.renter] = unit_breakdown
    end
    rooms_by_renter
  end
end 