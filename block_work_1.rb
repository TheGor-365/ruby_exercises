def whatsup
  pp 'hi_1'
end

whatsup do
  pp 'hi_2'
end

whatsup { pp 'hi_3' }; puts




def whatsup
  yield
end

whatsup do
  pp 'hi_4'
end

whatsup { pp 'hi_5' }; puts




def reached
  pp 'the top'
  yield
  pp 'the bottom'
end

reached do
  pp 'yield'
end; puts




def how_old
  yield 'John', 2
end

how_old do |name, age|
  pp "#{name} #{age}"
end; puts




[1, 2, 3].each do |number|
  pp "number: #{number}"
end; puts




def two(&block)
  pp "two is: #{block.call}"
end

two { 2 }; puts




def my_map(array)
  new_array = []

  for element in array
    new_array.push yield element
  end
  pp new_array
end

my_map([5, 10, 15]) do |number|
  number ** 2
end; puts





def method_with_block(&block)
  block.call
end

method_with_block { pp "#{'calling block for'.upcase} 'method_with_block' method" }; puts





class Car
  attr_accessor :color, :doors

  def initialize
    yield(self)
  end
end

car = Car.new do |c|
  c.color = 'red'
  c.doors = 4
end

pp car
puts "COLOR: #{car.color}; DOORS: #{car.doors}"; puts


Bus = Struct.new(:color, :doors, keyword_init: true)
bus = Bus.new(color: 'green', doors: 3) do |c|
  c.color
  c.doors
end

pp bus
puts "COLOR: #{bus.color}; DOORS: #{bus.doors}"; puts





class Note
  attr_accessor :note

  def initialize(note=nil)
    @note = note
    pp "@note is '#{@note}'"
  end

  def self.create
    self.connect
    note = new(yield)
    note.write
    self.disconnect
  end

  def write
    pp "Writing '#{@note}' to the database"
  end

  private

  def self.connect
    pp 'Connecting to the db'
  end

  def self.disconnect
    pp 'Disconnecting from the db'
  end
end


note = Note.create { 'H-E-L-L-O' }; puts

note = Note.create do |s|
  s
end; puts

note = Note.create do |s|
  s.inspect
end; puts

note = Note.create do |s|
  s
  'S-E-E-Y-A-A'
end; puts

pp note
