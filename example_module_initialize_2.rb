module Timeable
  attr_reader :time_created

  def initialize
    @time_created = Time.now
  end

  def age
    Time.now - @time_created
  end
end


class Character
  include Timeable
  attr_reader :name

  def initialize(name)
    @name = name
    super()
  end
end



character = Character.new 'Fred'

pp character; puts

pp character.name
pp character.time_created; puts

pp Character.ancestors
