puts 'Today you are invited to watch a movie:'

current_path = File.dirname __FILE__
file_path    = current_path + '/filmDescription.txt'

if File.exist? file_path
  file  = File.new file_path
  lines = file.readlines

  file.close

  number = rand(lines.length)
  number -= 1 if number % 2 == 1

  puts lines[number]
  puts lines[number + 1]
else
  puts 'File did not found'
end
