floats = [ 1.2, 3.45, 0.91, 7.727, 11.42, 482.911 ]

round_down = Proc.new { |float| float.floor }
ints = floats.collect(&round_down)

pp ints
