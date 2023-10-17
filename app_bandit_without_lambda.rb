scores = {
  111 => 100,
  222 => 200,
  333 => 300,
  444 => 400,
  555 => 500,
  666 => 600,
  777 => 700,
  888 => 800,
  999 => 900
}

balance = 1000

while true do
  puts "Press Enter to play..."
  gets

  combination = rand(100..999)
  puts combination

  if scores[combination]
    balance = balance + scores[combination]
    puts "You win: plus $#{scores[combination]} to your balance"
  elsif balance <= 0
    puts "You lose"; exit
  else
    balance -= 10
    puts "Minus $#{10}"
  end
  puts "Your balance $#{balance}"
end
