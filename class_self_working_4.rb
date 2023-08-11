class Person
  attr_reader :age

  def self.species
    puts '35'
  end

  def initialize(age)
    @age = age
  end

  def say_hello
    puts "I am #{@age}"
  end
end


bob = Person.new('32')

pp Person.species
pp bob.say_hello
pp bob.class.species
pp bob.age
