f = File.open 'trump.txt', 'r'

@hh = {}

def add_to_hash word
  if !word.empty?
    word.downcase!

    cnt = @hh[word].to_i
    cnt += 1

    @hh[word] = cnt
  end
end

f.each_line do |line|
  arr = line.split(/\s|\n|\.|\,|\(|\)|\-|\$/)
  arr.each { |word| add_to_hash(word) }
end

puts @hh.inspect
puts

@hh.each do |k, v|
  puts "#{v} #{k}"
end

f.close
