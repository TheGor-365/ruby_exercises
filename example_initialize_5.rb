module RailsStyleInitializer
  def initialize(atts = {})
    self.attributes = atts
  end

  def attributes=(atts)
    atts.each do |att, value|
      send "#{att}=", value
    end
  end
end

class Player
  include RailsStyleInitializer

  attr_accessor :name
  attr_accessor :score

  def initialize(attributes = {})
    super
    @score ||= 0
  end
end




player = Player.new
pp player; puts

player.name = 'Jack'
player.score = 67888

pp player.name
pp player.score
pp player; puts
