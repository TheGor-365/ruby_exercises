class Square
  def initialize(width)
    @width = width
  end

  def area
    @width * @width
  end
end



square = Square.new 23

puts square.area
