def whatsup
  puts "whatsup"
end

whatsup do
  puts "hi"
end
whatsup { puts "hi" }

def whatsup
  yield
end

whatsup do
  puts "hello"
end
whatsup { puts "hi" }
puts '---------------------------------------------------------------'


def reached
  puts "the top"
  yield
  puts "the bottom"
end

reached do
  puts "the yield"
end
puts '---------------------------------------------------------------'


def how_old
  yield "John", 2
end

how_old do |name, age|
  puts "#{name} is #{age} years old"
end
puts '---------------------------------------------------------------'


[1, 2, 3].each do |n|
  puts "Number #{n}"
end
puts '---------------------------------------------------------------'


def two(&block)
  puts "two is: #{yield}"
end
two { 2 }
puts '---------------------------------------------------------------'


def my_map(array)
  new_array = []

  for element in array
    pp new_array.push yield element
  end

  new_array
end

my_map([1, 2, 3]) do |number|
  number * 2
end
puts '---------------------------------------------------------------'


def a_method(&block)
  pp block.call
end

a_method { "x" }
puts '---------------------------------------------------------------'


class Car
  attr_accessor :color, :doors

  def initialize
    yield(self)
  end
end

car = Car.new do |c|
  c.color = "Red"
  c.doors = 4
end
pp car
puts "color: #{car.color}\ndoors: #{car.doors}"

Bus = Struct.new(:color, :doors, keyword_init: true)
bus = Bus.new(color: 'Green', doors: 3) do |c|
  c.color
  c.doors
end
pp bus
puts "color: #{bus.color}\ndoors: #{bus.doors}"
puts '---------------------------------------------------------------'


class Note
  attr_accessor :note

  def initialize(note=nil)
    @note = note
    puts "@note is #{@note}"
  end

  def self.create
    self.connect
    note = new(yield)
    note.write
    self.disconnect
  end

  def write
    puts "Writing \"#{@note}\" to the database."
  end

private

  def self.connect
    puts "Connecting to the database..."
  end

  def self.disconnect
    puts "Disconnecting from the database..."
  end
end

Note.create { "Foo" }
puts
note = Note.create do |s|
  pp s
end
puts '---------------------------------------------------------------'


class Fixnum
  def to_proc
    Proc.new do |obj, *args|
      obj % self == 0
    end
  end
end

numbers = [1,2,3,4,5,6,7,8,9,10].select(&3)
pp numbers
puts '---------------------------------------------------------------'
