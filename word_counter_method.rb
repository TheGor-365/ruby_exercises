file = File.open 'trump.txt', 'r'

@hash = {}

def add_to_hash(word)
  unless word.empty?
    word.downcase!

    count = @hash[word].to_i
    count += 1

    @hash[word] = count
  end
end

file.each_line do |line|
  array = line.split(/\s|\n|\.|\,|\(|\)|\-|\$/)
  array.each { |word| add_to_hash(word) }
end

pp @hash; puts

@hash.each do |name, value|
  puts "#{value} #{name}"
end

file.close
