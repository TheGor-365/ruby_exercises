object = [1, '2', :b]
age = 26

p object.respond_to?(:sort)
p object.respond_to?(:size)
p object.respond_to?(:truncate)
puts
p age.respond_to?(:next)
