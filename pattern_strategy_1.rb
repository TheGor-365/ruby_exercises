class Navigator
  attr_reader :type

  def initialize(type = :car)
    @type = type
  end

  def build_route(*attributes)
    points = []

    if @type == :car
      points << { lat: 0, lon: 0 }
      points << { lat: 1, lon: 1 }
    elsif @type == :walk
      points << { lat: 10, lon: 10 }
      points << { lat: 21, lon: 21 }
    else
      points << { lat: 30, lon: 30 }
      points << { lat: 31, lon: 31 }
    end
    return points
  end
end

bus_nav = Navigator.new(:bus).build_route :a, :b
pp bus_nav; puts


pp Navigator.new(:bus).type


puts


car_nav = Navigator.new
pp car_nav; puts


pp car_nav.build_route :c, :d
pp car_nav.build_route :c
pp car_nav.build_route :a, :b, :c, :d, :e


puts


walk_nav = Navigator.new(:walk).build_route :a, :b
pp walk_nav
