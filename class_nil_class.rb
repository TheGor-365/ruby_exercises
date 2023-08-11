class Cage
  attr_accessor :creature

  def initialize(creature = nil)
    self.creature = creature # We forget to set a default!
  end

  def rawr
    creature.rawr
  end
end

pp cage = Cage.new
pp cage.rawr # => NoMethodError: undefined method `rawr' for nil:NilClass



class Creature
end

pp creature = Creature.new
pp creature.rawr # => NoMethodError: undefined method `rawr' for #<Creature:0x0055e6fb99e390>



class Creature
  def rawr
    'rawr!'
  end
end

pp creature = Creature.new

def creature.rawr
  'raaaaawr!'
end

pp creature.rawr # => 'raaaaawr!'



module LoudCreature
  def rawr
    'raaaaawr!'
  end
end


pp creature = Creature.new
pp creature.extend(LoudCreature)
pp creature.rawr # => 'raaaaawr!'



module QuietCreature
  def rawr
    'purrrrr :3'
  end
end

pp creature = Creature.new

pp creature.extend(LoudCreature)
pp creature.extend(QuietCreature)
pp creature.rawr # => 'purrrrr :3'



pp creature = Creature.new
pp creature.rawr # => 'rawr!'



class Creature
  include LoudCreature
  include QuietCreature
end

pp creature = Creature.new
pp creature.rawr # => 'purrrrr :3'



class Creature
  prepend LoudCreature

  def rawr
    'rawr!'
  end
end

pp creature = Creature.new
pp creature.rawr # => 'raaaaawr!'



class Beast
  def rawr
    'hurrrrrrrr!'
  end
end

class Creature < Beast
  # Method defined on superclass
end

pp creature = Creature.new
pp creature.rawr # => 'hurrrrrrrr!'



class Creature
  def method_missing(method, *args, &block)
    "I haven't learned to #{method} yet :("
  end
end

pp creature = Creature.new

pp creature.rawr # => "I haven't learned to rawr yet :("
pp creature.rawor # => "I haven't learned to rawor yet :("



module Beast
  def method_missing(method, *args, &block)
    "I haven't learned to #{method} yet :("
  end
end

class Creature
  include Beast
end

pp creature = Creature.new
pp creature.rawr # => "I haven't learned to rawr yet :("
