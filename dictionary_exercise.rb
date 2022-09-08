hh = {
  "dog"  => ["sobaka", "pyos"],
  "cat"  => ["koshka", "kot"],
  "girl" => ["devushka"]
}

loop do
  print "Enter word: "
  word = gets.strip
  translate = hh[word]

  puts "Translates: #{translate.size}"
  puts
  puts "It is:"

  translate.each.with_index do |item, index|
    puts "#{index + 1}. #{item.capitalize}"
  end
end
