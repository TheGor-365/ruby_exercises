require 'forwardable'

class Computer
  extend Forwardable

  def_delegators :@memory, :read, :write

  def initialize
    @memory = Memory.new
  end
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



pp computer = Computer.new; puts


pp computer.write 'Ruby'
pp computer.write 'Java'
pp computer.write 'Go'; puts


pp computer; puts


pp computer.read 0
pp computer.read 2; puts
