arr = [ 1, 2, 3, 4, 5, 6, 7, 8, 9 ]

def select_item quantity, arr
  arr = arr.take(quantity)
  arr
end

choice = ARGV[0]

puts "\nWe have #{arr.inspect}, take a piece..."

if choice == nil || !choice.is_a?(Numeric)
  print "\nEnter number: "
  choice = STDIN.gets.to_i
end

puts "#{(select_item choice, arr).inspect}"
