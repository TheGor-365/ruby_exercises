add_10 = lambda { |score| score + 10 }
add_20 = lambda { |score| score + 20 }
sub_5  = lambda { |score| score - 5  }

scores = {
  100 => add_10,
  222 => add_10,
  333 => add_10,
  444 => add_20,
  555 => add_20,
  666 => add_20,
  777 => add_20,
  888 => sub_5,
  999 => sub_5
}

balance = 1000

loop do
  combination = rand(100..999)
  puts "Combination: #{combination}"

  if scores[combination]
    result  = scores[combination]
    balance = result.call balance
    puts "Lambda called"
  else
    balance = sub_5.call balance
  end

  puts "Balance: $#{balance}"
  puts 'Press Enter...'
  gets

  break if balance <= 0
end
