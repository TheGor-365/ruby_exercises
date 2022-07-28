f = File.open "file.A1.txt"

line = f.readline
lines = f.readlines

puts line[0]
puts
puts line
puts
puts lines[0]
puts
puts lines

f.close
