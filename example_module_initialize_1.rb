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
    super(name)
    @tricks = tricks
  end
end



dog = Dog.new %w[ roll speak play dead ], 'Spots'

pp dog; puts

pp dog.tricks
pp dog.name; puts

pp !!dog.name
pp !!dog.tricks; puts






module ThePet
  attr_reader :name

  def initialize(options = {})
    @name = options[:name]
    post_initialize(options)
  end

  def post_initialize(options = {}); end
end


class Cat
  include ThePet
  attr_reader :tricks

  def post_initialize(options = {})
    @tricks = options[:tricks]
  end
end



cat = Cat.new(name: 'Fido', tricks: %w[ play dead roll over ])

pp cat; puts

pp cat.tricks
pp cat.name; puts

pp !!cat.name
pp !!cat.tricks; puts
