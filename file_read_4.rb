input = File.open "file.A1.txt", "r"

while line = input.gets
  line.strip!
  puts line
end
