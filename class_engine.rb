class RandomEngine
  def self.get_random_value
    rand(100..999)
  end

  def self.to_string
    get_random_value.to_s
  end

  def third
    pp 'three'
  end
end


module GameEngine
  def self.play
    a = RandomEngine.get_random_value
  end

  def self.show
    b = RandomEngine.to_string
  end

  def self.three
    c = RandomEngine.new.third
  end

  def self.first
    three[0]
  end
end



pp random_engine = RandomEngine.get_random_value
pp random_engine = RandomEngine.to_string; puts



random_engine_2 = RandomEngine.new

pp random_engine_2.third; puts
pp random_engine_3 = RandomEngine.new.third; puts



pp GameEngine.play
pp GameEngine.show; puts



pp game_engine = GameEngine.play
pp game_engine = GameEngine.show; puts

pp game_engine
