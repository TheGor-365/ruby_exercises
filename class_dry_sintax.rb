class Cat
  def initialize name, age, weight
    @name, @age, @weight = name, age, weight
  end

  def name; @name; end
  def age; @age; end
  def weight; @weight; end

  def name= name
    @name = name
  end

  def age= age
    @age = age
  end

  def weight= weight
    @weight = weight
  end
end


# same class
class Cat
  attr_writer :name, :age, :weight

  def initialize name, age, weight
    @name, @age, @weight = name, age, weight
  end

  def name; @name; end
  def age; @age; end
  def weight; @weight; end
end


# same class
class Cat
  attr_accessor :name, :age, :weight

  def initialize name, age, weight
    @name, @age, @weight = name, age, weight
  end
end


# gives nil
class Cat
  attr_accessor :name

  def initialize string
    name = string
  end
end

p cat = Cat.new('Kit') ; p cat.name
