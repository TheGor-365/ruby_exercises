class Truck
  attr_accessor :make, :year

  def self.default_make
    pp 'Toyota, 1999'
  end

  def make
    pp @make || self.class.default_make
  end

  def year
    pp @year || self.class.default_make
  end

  def initialize(make = nil, year = nil)
    self.make, self.year = make, year
  end
end



first_truck = Truck.new('Honda', 2000)

first_truck.make
first_truck.year; puts



second_truck = Truck.new('RAM', 2012)

second_truck.make
second_truck.year; puts



second_truck = Truck.new

second_truck.make
second_truck.year; puts



Truck.default_make
