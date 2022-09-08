def alphabetize(arr, rev=false)
  rev ? arr.sort { |item1, item2| item2 <=> item1 } : arr.sort { |item1, item2| item1 <=> item2 }
end

books = %w[ Heart of Darkness Code Complete The Lorax The Prophet Absalom, Absalom! ]

puts "A-Z: #{alphabetize(books)}"
puts "Z-A: #{alphabetize(books, true)}"
