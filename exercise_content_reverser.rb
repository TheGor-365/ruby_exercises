file   = File.open 'trump.txt', 'r'
@array = []

file.each_line do |line|
  words = line.split(/\s|\n|\.|\,|\(|\)|\-|\$/)

  words.each do |word|
    @array << word
  end
end


pp @array.reverse.join(' ')
