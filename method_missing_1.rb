class Albuquerque
  def initialize actions
    @actions = actions
  end

  def method_missing name, **options
    value = @actions[name]

    pp "#{name}: #{value}"
  end
end

albuquerque = Albuquerque.new cook: 'Walt', take_a_ride: 'Jessie', die: 'Gus'

pp albuquerque
puts

albuquerque.cook
albuquerque.take_a_ride
albuquerque.die
puts

albuquerque.aaa
