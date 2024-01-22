class ClassName; end

pp ClassName.ancestors; puts




puts '--- include ---'; puts

module Greeting
  def greet
    'hey'
  end
end

class King
  include Greeting
end

pp King.ancestors

pp arthur = King.new
pp arthur.greet; puts




module Greeting
  def greet
    'hey'
  end
end

module Sanctioning
  def sanction
    'I hereby sanction this rule'
  end
end

class King
  include Greeting
  include Sanctioning
end

pp King.ancestors; puts




puts '--- prepend ---'; puts

module ShieldDecorator
  def equipment
    super << 'shield'
  end
end

class King
  prepend ShieldDecorator

  def equipment
    %w[sword]
  end
end

pp King.ancestors

pp arthur = King.new
pp arthur.equipment; puts




puts '--- extend ---'; puts

module KingFinder
  def find_by_name(name)
    kings.select do |king|
      king.name == name
    end
  end
end

class King
  extend KingFinder

  def self.kings
    @@kings ||= []
  end

  def initialize(name)
    @name = name
    self.class.kings << self
  end

  attr_reader :name

  def inspect
    "King #{@name}"
  end
end

pp arthur  = King.new('Arthur')
pp aragorn = King.new('Aragorn')

pp King.find_by_name('Arthur'); puts

pp arthur.inspect
pp arthur.name
pp aragorn.inspect
pp aragorn.name
pp King.kings
