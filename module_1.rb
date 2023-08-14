module Circle
  PI = 3.141592653589793

  def Circle.area(radius)
    PI * radius**2
  end

  def Circle.circumference(radius)
    2 * PI * radius
  end
end


circle = 14

circle_area = Circle.area circle
pp circle_area.round 2

circle_circumference = Circle.circumference circle
pp circle_circumference.round 2
