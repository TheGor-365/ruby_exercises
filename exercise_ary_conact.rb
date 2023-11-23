collection = [ 1, 2, 3, 4, 5, 6, 7, 8, 9 ]

def select_item(quantity, collection)
  collection = collection.take(quantity)
end

choice = ARGV[0]

puts "\nWe have #{collection.inspect}, take a piece..."

if choice == nil || !choice.is_a?(Numeric)
  print "\nEnter number: "
  choice = STDIN.gets.to_i
end

pp select_item(choice, collection)
