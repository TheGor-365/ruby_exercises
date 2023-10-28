object = [ 1, '2', :b ]
age = 26

pp object.respond_to?(:sort)
pp object.respond_to?(:size)
pp object.respond_to?(:truncate)


puts


pp age.respond_to?(:next)
