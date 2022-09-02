hh = {
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

  x = rand(100..999)
  puts x

  if hh[x]
    balance = balance + hh[x]
    puts "Plus $#{hh[x]} to your balance"
  elsif balance <= 0
    puts "Your lose all of your money"
    exit
  else
    balance = balance - 10
    puts "Minus $#{10} of your balance"
  end

  puts "Your balance $#{balance}"
end
