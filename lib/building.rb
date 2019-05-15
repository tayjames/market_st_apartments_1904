require "pry"
class Building
  attr_reader :units

  def initialize
    @units = []
  end

  def add_unit(apartment)
    @units << apartment
  end

  def average_rent
    total_rent = @units
    integer = total_rent.inject(0) { |sum, apartment| sum + apartment.monthly_rent}
    float = integer.to_f / total_rent.size
    float
  end

  def renter_with_highest_rent
    greatest = @units.first
    @units.each do |apartment|
      if apartment.monthly_rent > greatest.monthly_rent
        greatest = apartment
      end
    end
     greatest.renter
  end

end
