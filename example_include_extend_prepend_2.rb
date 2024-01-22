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
pp Cat.ancestors; puts




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
pp Cat.ancestors; puts




# extend

module Homable
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def has_home?
    true
  end

  def attribute(name)
    name.upcase
  end
end

class Cat
  extend Homable
  attribute :name
end


cat = Cat.new 'Ivan'
pp cat.attribute 'Eric'
