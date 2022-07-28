plus_10 = lambda { |x| x + 10 }
plus_20 = lambda { |x| x + 20 }
sub_5 = lambda { |x| x - 5 }

a = plus_10.call 100
puts a
b = plus_20.call 56
puts b
c = sub_5.call 1
puts c
