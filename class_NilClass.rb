class Cage
  attr_accessor :creature

  def initialize(creature = nil)
    self.creature = creature # We forget to set a default!
  end

  def rawr
    creature.rawr
  end
end
p cage = Cage.new
p cage.rawr # => NoMethodError: undefined method `rawr' for nil:NilClass



class Creature
end
p creature = Creature.new
p creature.rawr # => NoMethodError: undefined method `rawr' for #<Creature:0x0055e6fb99e390>



class Creature
  def rawr
    'rawr!'
  end
end
p creature = Creature.new

def creature.rawr
  'raaaaawr!'
end
p creature.rawr # => 'raaaaawr!'



module LoudCreature
  def rawr
    'raaaaawr!'
  end
end
p creature = Creature.new
p creature.extend(LoudCreature)
p creature.rawr # => 'raaaaawr!'



module QuietCreature
  def rawr
    'purrrrr :3'
  end
end
p creature = Creature.new
p creature.extend(LoudCreature)
p creature.extend(QuietCreature)
p creature.rawr # => 'purrrrr :3'



p creature = Creature.new
p creature.rawr # => 'rawr!'



class Creature
  include LoudCreature
  include QuietCreature
end
p creature = Creature.new
p creature.rawr # => 'purrrrr :3'



class Creature
  prepend LoudCreature

  def rawr
    'rawr!'
  end
end
p creature = Creature.new
p creature.rawr # => 'raaaaawr!'



class Beast
  def rawr
    'hurrrrrrrr!'
  end
end

class Creature < Beast
  # Method defined on superclass
end
p creature = Creature.new
p creature.rawr # => 'hurrrrrrrr!'



class Creature
  def method_missing(method, *args, &block)
    "I haven't learned to #{method} yet :("
  end
end
p creature = Creature.new
p creature.rawr # => "I haven't learned to rawr yet :("
p creature.rawor # => "I haven't learned to rawor yet :("



module Beast
  def method_missing(method, *args, &block)
    "I haven't learned to #{method} yet :("
  end
end

class Creature
  include Beast
end
p creature = Creature.new
p creature.rawr # => "I haven't learned to rawr yet :("
