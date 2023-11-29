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
end


class Commander
  def move(who)
    move = %i[right left up down].sample
  end
end



commander = Commander.new
array     = Array.new(10) { Robot.new }

10.times do
  pp '\e[H\e2J'

  12.downto(-12) do |y|
    -30.upto(30) do |x|
      found = array.any? { |robot| robot.x == x && robot.y == y }
      found ? (print ' * ') : (print ' . ')
    end; puts
  end

  array.each do |robot|
    commander.move robot
  end; sleep 0.05
end
