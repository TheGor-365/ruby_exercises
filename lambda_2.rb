plus_10 = lambda { |number| number + 10 }
plus_20 = lambda { |number| number + 20 }
subs_5 =  lambda { |number| number - 5 }

a = plus_10.call 100
pp a

b = plus_20.call 56
pp b

c = subs_5.call 1
pp c
