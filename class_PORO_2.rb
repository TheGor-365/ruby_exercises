class Square
  def initialize(width)
    @width = width
  end

  def area
    pp @width * @width
  end
end



square = Square.new 23

square.area
