class Country
  attr_reader :name, :airports

  def initialize(name)
    @name, @airports = name, []
  end

  def add_airports(airport)
    @airports << airport
  end
end


class Airport
  attr_reader :name, :planes

  def initialize(name)
    @name, @planes = name, []
  end

  def add_planes(plane)
    @planes << plane
  end
end


class Plane
  attr_reader :model

  def initialize(model)
    @model = model
  end
end



airports = []

airport_1 = Airport.new 'SVO'
airport_2 = Airport.new 'DME'

airports << airport_1
airports << airport_2


countries = []

country_1 = Country.new 'Mehico'
country_2 = Country.new 'Moscow'
country_3 = Country.new 'NY'

country_1.add_airports 'MehocoAir'
country_1.add_airports 'MehocoAir2'

country_2.add_airports airport_1
country_2.add_airports airport_2

country_3.add_airports 'NY airport'

countries << country_1
countries << country_2
countries << country_3

plane_1 = Plane.new 'Boeing-777'
plane_2 = Plane.new 'Airbus-320'
plane_3 = Plane.new 'Il-80'

plane_4 = Plane.new 'Boeing-111'
plane_5 = Plane.new 'Airbus-222'
plane_6 = Plane.new 'SU-333'

airport_1.add_planes plane_1
airport_1.add_planes plane_2
airport_1.add_planes plane_3

airport_2.add_planes plane_4
airport_2.add_planes plane_5
airport_2.add_planes plane_6

pp airport_1.name
pp airport_2.name

pp airport_1.planes
pp airport_2.planes


puts


countries.each do |country|
  puts "Country: #{country.name}"

  country.airports.each do |airport|
    puts "Airport #{airport}"
  end
end


puts


airports.each do |airport|
  puts "Airport #{airport.name}"

  airport.planes.each do |plane|
    puts "Plane: #{plane.model}"
  end
end
