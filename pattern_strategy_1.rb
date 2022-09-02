class Navigator
  def initialize type=:car
    @type = type
  end

  def build_route(a, b)
    points = []
    # do something
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

p Navigator.new(:bus).build_route(:a, :b)
