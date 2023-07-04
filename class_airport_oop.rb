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

airports.each do |airport|
  puts "Airport #{airport.name}:"
  
  airport.planes.each do |plane|
    puts "Plane: #{plane.model}"
  end
  puts
end
