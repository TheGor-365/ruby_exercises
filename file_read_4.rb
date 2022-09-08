input = File.open "text_files/file.A1.txt", "r"

while line = input.gets
  line.strip!
  puts line
end
