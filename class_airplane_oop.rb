class Airplane
  attr_reader :model, :altitude
  attr_accessor :speed

  def initialize(model)
    @model = model
    @speed, @altitude = 0
  end

  def fly
    @speed, @altitude = 800, 10_000
  end

  def land
    @speed, @altitude = 0
  end

  def moving?
    @speed > 0
  end
end



models = %w[
  Airbus-320
  Boeing-777
  Il-86
]

planes = []

100.times do
  model = models[rand(0..2)]
  plane = Airplane.new(model)

  plane.fly if rand(0..1) == 1
  plane.speed = rand(500..800)

  planes << plane
end

planes.each do |plane|
  puts "Model: #{plane.model} Speed: #{plane.speed} Altitude: #{plane.altitude}"
  puts "Is moving: #{plane.moving?}"
end

plane_1 = Airplane.new('Boeing-777')
plane_2 = Airplane.new('Airbus-320')

puts "Model: #{plane_1.model} Speed: #{plane_1.speed} Altitude: #{plane_1.altitude}"
puts "Is moving: #{plane_1.moving?}"


plane_1.fly

puts "Model: #{plane_1.model} Speed: #{plane_1.speed} Altitude: #{plane_1.altitude}"
puts "Is moving: #{plane_1.moving?}"


plane_1.land

puts "Model: #{plane_1.model} Speed: #{plane_1.speed} Altitude: #{plane_1.altitude}"
puts "Is moving: #{plane_1.moving?}"


plane_2.fly

puts "Model: #{plane_2.model} Speed: #{plane_2.speed} Altitude: #{plane_2.altitude}"
puts "Is moving: #{plane_2.moving?}"
