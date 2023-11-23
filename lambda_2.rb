plus_10 = lambda { |number| number + 10 }
plus_20 = lambda { |number| number + 20 }
subs_5  = lambda { |number| number - 5  }

plus_v1 = plus_10.call 100
pp plus_v1

plus_v2 = plus_20.call 56
pp plus_v2

subscribe = subs_5.call 1
pp subscribe
