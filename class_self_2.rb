class RandomEngine
  def self.get_random_value
    rand(100..999)
  end
end

class GameEngine
  def self.play
    round = RandomEngine.get_random_value
  end
end



pp GameEngine.play
