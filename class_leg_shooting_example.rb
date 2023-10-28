class Cat
  attr_accessor :name

  def initialize(string)
    name = string
  end
end


cat = Cat.new("Kit")

pp cat.name



class Dog
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end


dog = Dog.new("Kit")

pp dog.name
