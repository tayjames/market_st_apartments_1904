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
    # total_rent = @units.map {|unit| unit.apartment.monthly_rent}
    #   unit.a
    # @units.each do |unit|
    #   unit.apartment.monthly_rent

  end

end
