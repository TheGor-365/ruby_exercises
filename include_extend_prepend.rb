# # include
#
# module Homable
#   def has_home?
#     true
#   end
# end
#
# class Cat
#   include Homable
#
#   def has_home?
#     false
#   end
# end
#
# pp "include: #{Cat.new.has_home?}"
#
# pp Cat.ancestors
# puts
#
#
# # prepend
#
# module Homable
#   def has_home?
#     true
#   end
# end
#
# class Cat
#   prepend Homable
#
#   def has_home?
#     false
#   end
# end
#
# pp "prepend: #{Cat.new.has_home?}"
#
# pp Cat.ancestors
# puts '-' * 90


# extend

module Homable
  attr_accessor :name

  def initialize name
    @name = name
  end

  def has_home?
    true
  end

  def attribute name
    name.upcase
  end
end

class Cat
  extend Homable
  attribute :name
end

# pp "extend: #{Cat.has_home?}"
# pp Cat.ancestors
puts
p cat = Cat.new
# p cat.name
p cat.attribute 'Eric'
puts
# pp Cat.attribute 'John'

### define_method, instance_variable_get, instance_variable_set
