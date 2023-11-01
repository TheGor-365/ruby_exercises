class Robot
  attr_accessor :colour, :ai_type, :body_type, :movement, :name, :function

  def initialize(colour=nil, ai_type=nil, body_type=nil, movement=nil, name=nil, function=nil)
    @colour    = colour
    @ai_type   = ai_type
    @body_type = body_type
    @movement  = movement
    @name      = name
    @function  = function
  end
end


butter_robot = Robot.new(
  colour    = 'grey',
  ai_type   = 'too smart for own good',
  body_type = 'small rover',
  movement  = 'medium',
  name      = 'butter robot',
  function  = 'pass the butter'
)

pp butter_robot; puts


class RobotBuilder
  def initialize
    @robot = Robot.new
  end

  def set_default_parameters(colour, name, movement, body_type)
    @robot.colour    = colour
    @robot.name      = name
    @robot.movement  = movement
    @robot.body_type = body_type
  end

  def set_function(function)
    @robot.function = function
  end

  def set_as_smart
    @robot.ai_type = 'smart'
  end

  def set_as_dumb
    @robot.ai_type = 'dumb'
  end

  def set_as_terminator
    @robot.ai_type   = 'smart'
    @robot.function  = 'take over world'
    @robot.movement  = 'fast'
    @robot.body_type = 'humanoid'
    @robot.colour    = 'chrome'
    @robot.name      = terminator_name
  end

  def set_as_walee
    @robot.ai_type   = 'loving'
    @robot.function  = 'to help'
    @robot.movement  = 'medium'
    @robot.body_type = 'rover'
    @robot.colour    = 'rusty yellow'
    @robot.name      = 'WALL-E'
  end

  def robot
    @robot
  end

  private

  def terminator_name
    letters = ('a'..'z').to_a.sample(3).join
    numbers = rand 200..500
    letters + numbers.to_s
  end
end


pp builder = RobotBuilder.new; puts

pp builder.set_default_parameters(
  'Red',
  'Robot',
  'Slow',
  'Large'
)

pp builder.set_as_dumb
builder.set_function((1...5).each { |item| pp item.to_s })

builder = RobotBuilder.new
pp builder.set_as_walee

builder = RobotBuilder.new
pp builder.set_as_terminator; puts

pp builder
