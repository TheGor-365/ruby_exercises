file = File.open 'text_files/trump.txt', 'r+'

@array = []
@options = {}

f.each_line do |line|
  path_name = line.split(/\ /)
  @array << path_name
end

@array.each do |element|
  @options[element[0]] = element[1].strip!
end

puts @array.inspect
puts

puts @options.inspect
