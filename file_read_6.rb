current_path = File.dirname __FILE__
file_path = current_path + './file.A1.txt'

puts "Today you have:"

if File.exist? './file.A1.txt'
  f = File.new './file.A1.txt'
  line = f.readlines
  f.close
  puts line.sample
else
  puts "File don't found!"
end
