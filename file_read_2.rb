input = File.open 'text_files/text.txt', 'r'
total = 0

while line = input.gets
  array = line.split ','
  value = array[1].to_i
  total += value
end

puts "Total: #{total}"
