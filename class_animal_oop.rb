class Animal
  def initialize(name)
    @name = name
  end

  def run
    pp "#{@name} is running"
  end

  def jump
    pp "#{@name} is jumping"
  end
end


class Cat < Animal
  def initialize
    super 'cat'
  end

  def say_meow
    pp 'Meow'
  end
end


class Dog < Animal
  def initialize
    super 'dog'
  end

  def say_woof
    pp 'Woof'
  end
end


cat = Cat.new

cat.run
cat.say_meow; puts


dog = Dog.new

dog.jump
dog.say_woof
