file = File.open 'text_files/file.A1.txt'

line  = file.readline
lines = file.readlines

puts line[0]; puts
puts line; puts
puts lines[0]; puts
puts lines

file.close
