require 'forwardable'

class Computer
  extend Forwardable

  def_delegators :@memory, :read, :write

  def initialize
    @memory = Memory.new
  end

  # def write(data)
  #   @memory.write data
  # end

  # def read(index)
  #   @memory.read index
  # end
end

class Memory
  def initialize
    @data = []
  end

  def write(data)
    @data << data
  end

  def read(index)
    @data[index]
  end
end


pp computer = Computer.new

puts

pp computer.write 'Ruby'
pp computer
pp computer.read 0
