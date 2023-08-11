module Albuquerque
  def initialize actions
    @actions = actions
  end

  def method_missing name
    value = @actions[name]
    puts "if you want to |#{name.upcase}| - you must call |#{value.upcase}|"
  end
end

class LA
  include Albuquerque
end

la = LA.new(cook: 'Walt', take_a_ride: 'Jessie', die: 'Gus')

la.cook
la.take_a_ride
la.die
