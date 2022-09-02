add_100 = lambda { |z| z + 100 }
add_200 = lambda { |z| z + 200 }
add_300 = lambda { |z| z + 300 }
add_400 = lambda { |z| z + 400 }
add_500 = lambda { |z| z + 500 }
add_600 = lambda { |z| z + 600 }
add_700 = lambda { |z| z + 700 }
add_800 = lambda { |z| z + 800 }
add_900 = lambda { |z| z + 900 }

hh = {
  100 => add_100,
  222 => add_200,
  333 => add_300,
  444 => add_400,
  555 => add_500,
  666 => add_600,
  777 => add_700,
  888 => add_800,
  999 => add_900
}
balance = 1000

while true
  print 'Enter to play...'
  gets

  x = rand(100..999)
  puts "Game: ---#{x}---"

  if hh[x]
    f = hh[x]
    balance = f.call balance
    puts "You win and got $#{win}"
  else
    balance -= 10
    puts 'Lose, minus $10'
  end

  puts "Balance: $#{balance}"
  puts

  break if balance <= 0
end

puts 'LOOSER'
