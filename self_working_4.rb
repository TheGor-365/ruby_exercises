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


puts bob = Person.new('32')
puts
puts Person.species
puts bob.say_hello
puts bob.class.species
puts bob.age
# puts bob.species
# puts Person.say_hello
