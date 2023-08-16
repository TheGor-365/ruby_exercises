def whatsup
  pp 'hi_1'
end

whatsup do
  pp 'hi_2'
end

whatsup { pp 'hi_3' }

def whatsup
  yield
end

whatsup do
  pp 'hi_4'
end

whatsup { pp 'hi_5' }

puts
puts



def reached
  pp 'the top'
  yield
  pp 'the bottom'
end

reached do
  pp 'the yield'
end

puts
puts



def how_old
  yield 'John', 2
end

how_old do |name, age|
  pp "#{name} is #{age} years old"
end

puts
puts



[1, 2, 3].each do |number|
  puts "Number #{number}"
end

puts
puts



def two &block
  puts "two is: #{yield}"
end

two { 2 }

puts
puts



def my_map array
  new_array = []

  for element in array
    pp new_array.push yield element
  end

  new_array
end

my_map([1, 2, 3]) do |number|
  number * 2
end

puts
puts



def method_with_block &block
  block.call
end

method_with_block { pp "#{'calling block for'.upcase} method_with_block" }

puts
puts



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
puts "color: #{car.color} \ndoors: #{car.doors}"
puts

Bus = Struct.new(:color, :doors, keyword_init: true)
bus = Bus.new(color: 'Green', doors: 3) do |c|
  c.color
  c.doors
end
pp bus
puts "color: #{bus.color} \ndoors: #{bus.doors}"

puts
puts



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

note = Note.create { "Hello" }

puts

note = Note.create do |s|
  pp s
end

puts
puts



class Fixnum
  def to_proc
    Proc.new do |object, *arguments|
      object % self == 0
    end
  end
end

number_3 = [1,2,3,4,5,6,7,8,9,10].select(&3)
number_5 = [1,2,3,4,5,6,7,8,9,10].select(&5)
number_1 = [1,2,3,4,5,6,7,8,9,10].select(&1)
number_2 = [1,2,3,4,5,6,7,8,9,10].select(&2)

pp "3: #{number_3}"
pp "5: #{number_5}"
pp "1: #{number_1}"
pp "2: #{number_2}"
