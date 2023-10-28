class Cage
  attr_accessor :creature

  def initialize(creature = nil)
    self.creature = creature
  end

  def rawr
    creature.rawr
  end
end

cage = Cage.new
# pp cage.raw



class Creature
end

creature = Creature.new
# pp creature.rawr


puts


class Creature
  def rawr
    'rawr - 1'
  end
end

creature = Creature.new

def creature.rawr
  'raaaaawr - 1'
end

pp creature.rawr # => 'raaaaawr!'


puts


module LoudCreature
  def rawr
    'raaaaawr - 2'
  end
end


creature = Creature.new
creature.extend(LoudCreature)

pp creature.rawr # => 'raaaaawr!'


puts


module QuietCreature
  def rawr
    'purrrrr :3'
  end
end

creature = Creature.new
creature.extend(LoudCreature)
creature.extend(QuietCreature)

pp creature.rawr


puts


creature = Creature.new
pp creature.rawr


puts


class Creature
  include LoudCreature
  include QuietCreature
end

creature = Creature.new
pp creature.rawr


puts


class Creature
  prepend LoudCreature

  def rawr
    'rawr - 2'
  end
end

creature = Creature.new
pp creature.rawr


puts


class Creature
  def method_missing(method, *args, &block)
    "I haven't learned to #{method} yet :("
  end
end

creature = Creature.new

pp creature.rawr
pp creature.rawor


puts


module Beast
  def method_missing(method, *args, &block)
    "I haven't learned to #{method} yet :("
  end
end

class Creature
  include Beast
end

creature = Creature.new
pp creature.rawr
