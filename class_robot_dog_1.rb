class Robot
  attr_accessor :x, :y

  def initialize(options = {})
    @x = options[:x] || 0
    @y = options[:y] || 0
  end

  def right; self.x += 1; end
  def left;  self.x -= 1; end
  def up;    self.y += 1; end
  def down;  self.y -= 1; end
  def label; ' * ';       end
end



class Dog
  attr_accessor :x, :y

  def initialize(options = {})
    @x = options[:x] || 0
    @y = options[:y] || 0
  end

  def right; self.x += 1; end
  def left;  self.x -= 1; end
  def up;    self.y += 1; end
  def down;  self.y -= 1; end
  def label; ' @ ';       end
end



class Commander
  def move(who)
    move = %i[right left up down].sample
    who.send move
  end
end



commander = Commander.new
array     = Array.new(10) { Robot.new }

array.push(Dog.new x: -12, y: 12)

10.times do
  pp '\e[H\e[2J'

  12.downto(-12) do |y|
    -12.upto(12) do |x|
      someday = array.find { |somebody| somebody.x == x && somebody.y == y }
      someday ? (print someday.label) : (print ' . ')
    end; puts
  end

  game_over = array.combination(2).any? do |a, b|
    a.x == b.x && \
    a.y == b.y && \
    a.label != b.label
  end

  pp 'Game over'; exit if game_over

  array.each do |somebody|
    commander.move somebody
  end
end
