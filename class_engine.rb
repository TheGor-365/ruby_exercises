class RandomEngine
  def self.get_random_value
    rand(100..999)
  end

  def self.to_string
    get_random_value.to_s
  end

  def third
    puts 'three'
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

p random_engine = RandomEngine.get_random_value
p random_engine = RandomEngine.to_string
# p random_engine = RandomEngine.third
# p random_engine.to_string
puts '---------'
pp random_engine_2 = RandomEngine.new
pp random_engine_2.third
pp random_engine_3 = RandomEngine.new.third
# pp random_engine_3.third
puts '---------'
p GameEngine.play
p GameEngine.show
# p GameEngine.third
# p GameEngine.get_random_value
# p GameEngine.to_string
# p GameEngine.third
puts '---------'
p game_engine = GameEngine.play
p game_engine = GameEngine.show
# p game_engine = GameEngine.third
# p game_engine.play
# p game_engine.show
# p game_engine.three
p game_engine
# p game_engine.first
puts '---------'
# p game_engine_2 = GameEngine.new
