class Strategy
  def call a, b; end
end

class Car < Strategy
  def initialize; end

  def call a, b
    points = []
    points << { lat: 0, lon: 0 }
    points << { lat: 1, lon: 1 }
    return points
  end
end

class Walk
  def initialize; end

  def call a, b
    points = []
    points << { lat: 10, lon: 10 }
    points << { lat: 21, lon: 21 }
    return points
  end
end

class Bus
  def initialize; end

  def call a, b
    points = []
    points << { lat: 30, lon: 30 }
    points << { lat: 31, lon: 31 }
    return points
  end
end

class Plane
  def initialize; end

  def call a, b
    points = []
    points << { lat: 50, lon: 50 }
    points << { lat: 51, lon: 51 }
    return points
  end
end



class Navigator
  attr_accessor :route_strategy

  def initialize type=:car
    @type = type
  end

  def build_route a, b
    points = []
    points = route_strategy.new.call a, b
    points
  end
end

pp navigator = Navigator.new

pp navigator.route_strategy = Walk
pp navigator.build_route :a, :b

puts

pp navigator.route_strategy = Car
pp navigator.build_route :a, :b

puts

pp navigator.route_strategy = Bus
pp navigator.build_route :a, :b

puts

pp navigator.route_strategy = Plane
pp navigator.build_route :a, :b
