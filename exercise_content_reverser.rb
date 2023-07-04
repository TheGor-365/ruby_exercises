file = File.open 'trump.txt', 'r'
@arr = []

file.each_line do |line|
  words = line.split(/\s|\n|\.|\,|\(|\)|\-|\$/)

  words.each do |word|
    @arr << word
  end
end

puts @arr.reverse.join(' ')
