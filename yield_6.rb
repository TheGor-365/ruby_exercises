class Object
  def yield_self(*arguments)
    yield(self, *arguments)
  end
end

pp 24.then { |argument| argument * argument }; puts





class Person
  def initialize(name)
     @name = name
  end

  def do_with_name
    yield @name
  end
end

person = Person.new('Oscar')
result = []

person.do_with_name do |value|
  result << "Got: #{value}"
end

pp result; puts





class Fruit
  attr_accessor :kinds

  def initialize
    @kinds = %w(orange apple pear banana)
  end

  def each(*array)
    array << 'inside each'
    array << 3.times { yield (@kinds.tap { |kinds| "selecting from #{kinds}"}).sample }
  end
end

fruit = Fruit.new
array = []

result = fruit.each do |kind|
  array << 'inside block ' + kind
end

pp fruit.kinds
pp array
