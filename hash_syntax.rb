balls = {
  soccer_ball: { weight: 410, colors: [ :red, :blue ] },
  tennis_ball: { weight: 58, colors: [ :yellow, :white ] },
  golf_ball:   { weight: 45, colors: [ :white ] }
}

soccer_balls_colors = balls[ :soccer_ball ][ :colors ]
pp soccer_balls_colors

soccer_balls_weight = balls[ :soccer_ball ][ :weight ]
pp soccer_balls_weight

balls[ :soccer_ball ][ :colors ].push(:green)
pp soccer_balls_colors; puts




balls = [
  { type: :soccer_ball, weight: 410, colors: [ :red, :blue ] },
  { type: :tennis_ball, weight: 58, colors: [ :yellow, :white ] },
  { type: :golf_ball, weight: 45, colors: [ :white ] }
]

@cart = [
  { type: :soccer_ball, qty: 2 },
  { type: :tennis_ball, qty: 3 }
]

inventory = {
  soccer_ball: { available: 2, price_per_item: 100 },
  tennis_ball: { available: 1, price_per_item: 30 },
  golf_ball:   { available: 5, price_per_item: 5 }
}

def qtys_array
  sum = []
  @cart.each { |hash| sum << hash[:qty] }
  sum
end

pp qtys_array; puts




def total
  sum = 0
  qtys_array.each { |qty| sum += qty }
end

pp total
