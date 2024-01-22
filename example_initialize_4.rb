module Pet
  attr_reader :name

  def initialize(name)
    @name = name
  end
end


class Dog
  include Pet
  attr_reader :tricks

  def initialize(tricks, name)
    @tricks = tricks
    super(name)
  end
end




pp dog = Dog.new([ 'roll', 'speak', 'play dead' ], 'Spots'); puts

pp dog.tricks
pp dog.name; puts

pp !!dog.name
