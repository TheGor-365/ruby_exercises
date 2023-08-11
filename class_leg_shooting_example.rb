class Cat
  attr_accessor :name

  def initialize string
    name = string
  end
end


cat = Cat.new("Kit")

pp cat.name
