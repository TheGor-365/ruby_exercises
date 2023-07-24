file = File.open 'text_files/trump.txt', 'r'

@options = {}

def add_to_hash word
  if !word.empty?
    word.downcase!

    count = @options[word].to_i
    count += 1
    @options[word] = count
  end
end

file.each_line do |line|
  array = line.split(/\s|\n|\.|,|\;|\-|\'|\"|\(|\)|\-/)
  array.each {|word| add_to_hash(word)}
end

file.close

@options.each do |name, value|
  puts "#{value} #{name}"
end
