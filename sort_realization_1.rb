def alphabetize(array, rev=false)
  rev ? array.sort { |item_1, item_2| item_2 <=> item_1 } : array.sort { |item_1, item_2| item_1 <=> item_2 }
end

books = %w[ Heart of Darkness Code Complete The Lorax The Prophet Absalom, Absalom! ]

puts "A-Z: #{alphabetize(books)}"
puts "Z-A: #{alphabetize(books, true)}"
