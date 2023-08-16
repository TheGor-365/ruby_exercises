file_name = ARGV[0]

abort 'Input file name: ' if file_name == nil
abort 'File is not found!' unless File.exist? file_name

file  = File.new file_name
lines = file.readlines

file.close

puts 'File opened: ' + file_name

empty_lines_counter = 0
last_five_lines     = []

lines.each_with_index do |line, index|
  empty_lines_counter += 1 if line == "\n"
  last_five_lines << line if lines.size - index <= 5
end

puts 'All lines: ' + lines.length.to_s
puts 'Empty lines: ' + empty_lines_counter.to_s
puts 'Last 5 lines: '

puts

for line in last_five_lines
  puts line
end
