input = File.open 'text_files/text.txt', 'r'

while line = input.gets
  puts line
end

input.close
