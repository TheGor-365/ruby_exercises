f = File.open 'trump.txt', 'r+'

@arr = []
@hh = {}

f.each_line do |line|
  path_name = line.split(/\ /)
  @arr << path_name
end

@arr.each do |array|
  @hh[array[0]] = array[1].strip!
end

puts @arr.inspect
puts
puts @hh.inspect
