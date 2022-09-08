require_relative 'text_files/file_2.txt'

file = File.new 'text_files/file_2.txt'
lines = file.readlines

empty_lines_counter = 0

last_five_lines = []

lines.each_with_index do |line, index|
  if line == "\n"
    empty_lines_counter += 1
  end

  if lines.size - index <= 5
    last_five_lines << line
  end
end

puts "All lines: #{lines.size.to_s}"
puts "Empty lines: #{empty_lines_counter.size.to_s}"
puts "Last 5 lines:"

for line in last_five_lines
  puts line
end
