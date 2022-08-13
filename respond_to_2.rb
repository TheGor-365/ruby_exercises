object = [1, '2', :b]

p object.respond_to?(:sort)
p object.respond_to?(:size)
p object.respond_to?(:truncate)
