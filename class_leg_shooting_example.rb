class Cat

  attr_accessor :name

  def initialize string
    name = string
  end

end

cat = Cat.new("Kit")
p cat.name
