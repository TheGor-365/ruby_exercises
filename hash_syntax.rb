balls = {
  soccer_ball: { weight: 410, colors: [ :red, :blue ] },
  tennis_ball: { weight: 58, colors: [ :yellow, :white ] },
  golf_ball: { weight: 45, colors: [ :white ] }
}

puts balls
puts

soccer_balls_colors = balls[ :soccer_ball ][ :colors ]
puts soccer_balls_colors.inspect

soccer_balls_weight = balls[ :soccer_ball ][ :weight ]
puts soccer_balls_weight.inspect
puts
balls[ :soccer_ball ][ :colors ].push(:green)
puts soccer_balls_colors.inspect
puts

balls = [
  { type: :soccer_ball, weight: 410, colors: [ :red, :blue ] },
  { type: :tennis_ball, weight: 58, colors: [ :yellow, :white ] },
  { type: :golf_ball, weight: 45, colors: [ :white ] }
]

puts balls.inspect

@cart = [
  { type: :soccer_ball, qty: 2 },
  { type: :tennis_ball, qty: 3 }
]

inventory = {
  soccer_ball: { available: 2, price_per_item: 100 },
  tennis_ball: { available: 1, price_per_item: 30 },
  golf_ball: { available: 5, price_per_item: 5 }
}

def qtys_array
  sum = []
  @cart.each { |hash| sum << hash[:qty] }
  sum
end
puts 'Qtys array'
puts qtys_array.inspect


def total
  sum = 0
  qtys_array.each { |qty| sum += qty }
  puts sum
end

total
