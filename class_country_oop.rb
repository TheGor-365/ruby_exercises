class Country
  attr_reader :name, :airports

  def initialize name
    @name = name
    @airports = []
  end

  def add_airports airport
    @airports << airport
  end
end

class Airport
  attr_reader :name, :planes

  def initialize name
    @name = name
    @planes = []
  end

  def add_planes plane
    @planes << plane
  end
end

class Plane
  attr_reader :model

  def initialize model
    @model = model
  end
end


airports = []

airport1 = Airport.new 'SVO'
airport2 = Airport.new 'DME'

airports << airport1
airports << airport2

countries = []

country1 = Country.new 'Mehico'
country2 = Country.new 'Moscow'
country3 = Country.new 'NY'

country1.add_airports 'MehocoAir'
country1.add_airports 'MehocoAir2'

country2.add_airports airport1
country2.add_airports airport2

country3.add_airports 'NY airport'

countries << country1
countries << country2
countries << country3

plane1 = Plane.new 'Boeing-777'
plane2 = Plane.new 'Airbus-320'
plane3 = Plane.new 'Il-80'

plane4 = Plane.new 'Boeing-111'
plane5 = Plane.new 'Airbus-222'
plane6 = Plane.new 'SU-333'

airport1.add_planes plane1
airport1.add_planes plane2
airport1.add_planes plane3

airport2.add_planes plane4
airport2.add_planes plane5
airport2.add_planes plane6

puts airport1.name
puts airport2.name
puts
puts airport1.planes
puts airport2.planes
puts

countries.each do |country|
  puts "Country: #{country.name}"
  country.airports.each do |airport|
    puts "Airport #{airport}"
  end
end

airports.each do |airport|
  puts "Airport #{airport.name}:"
  airport.planes.each do |plane|
    puts "Plane: #{plane.model}"
  end
end
