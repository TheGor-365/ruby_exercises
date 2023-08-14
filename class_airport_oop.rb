class Airport
  attr_reader :name, :planes

  def initialize name
    @name,  @planes = name, []
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

airport_1 = Airport.new 'SVO'
airport_2 = Airport.new 'DME'

airports << airport_1
airports << airport_2

plane_1 = Plane.new 'Boeing-777'
plane_2 = Plane.new 'Airbus-320'
plane_3 = Plane.new 'Il-80'

plane4 = Plane.new 'Boeing-111'
plane5 = Plane.new 'Airbus-222'
plane6 = Plane.new 'SU-333'

airport_1.add_planes plane_1
airport_1.add_planes plane_2
airport_1.add_planes plane_3

airport_2.add_planes plane4
airport_2.add_planes plane5
airport_2.add_planes plane6

puts airport_1.name
puts airport_2.name

puts
puts



puts airport_1.planes
puts airport_2.planes

puts
puts

airports.each do |airport|
  puts "Airport #{airport.name}\n\n"

  airport.planes.each do |plane|
    puts "Plane: #{plane.model}"
  end
  puts
end
