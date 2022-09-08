input = File.open 'text_files/text.txt', 'r'
total = 0

while line = input.gets
  arr = line.split ','
  value = arr[1].to_i
  total += value
end

puts "Total: #{total}"
