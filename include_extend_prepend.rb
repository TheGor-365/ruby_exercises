# include

module Homable
  def has_home?
    true
  end
end

class Cat
  include Homable

  def has_home?
    false
  end
end

pp "include: #{Cat.new.has_home?}"

pp Cat.ancestors
puts


# prepend

module Homable
  def has_home?
    true
  end
end

class Cat
  prepend Homable

  def has_home?
    false
  end
end

pp "prepend: #{Cat.new.has_home?}"

pp Cat.ancestors
puts


# extend

module Homable
  def has_home?
    true
  end
end

class Cat
  extend Homable
end

pp "extend: #{Cat.has_home?}"

pp Cat.ancestors

### define_method, instance_variable_get, instance_variable_set
