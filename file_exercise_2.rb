file = File.open 'text_files/trump.txt', 'r+'

@array = []
@options = {}

file.each_line do |line|
  path_name = line.split(/\ /)
  @array << path_name
end

@array.each do |element|
  @options[element[0]] = element[1].strip!
end

pp @array
pp @options
