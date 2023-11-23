add_100 = lambda { |score| score + 100 }
add_200 = lambda { |score| score + 200 }
add_300 = lambda { |score| score + 300 }
add_400 = lambda { |score| score + 400 }
add_500 = lambda { |score| score + 500 }
add_600 = lambda { |score| score + 600 }
add_700 = lambda { |score| score + 700 }
add_800 = lambda { |score| score + 800 }
add_900 = lambda { |score| score + 900 }

scores = {
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

  combination = rand(100..999)
  puts "Game: ---#{combination}---"

  if scores[combination]
    result  = scores[combination]
    balance = result.call balance
    puts "You win and got $#{result}"
  else
    balance -= 10
    puts 'Lose, minus $10'
  end

  puts "Balance: $#{balance}"; puts
  break if balance <= 0
end

puts 'LOOSER'
