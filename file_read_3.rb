puts 'Today you are invited to watch a movie:'

current_path = File.dirname __FILE__
file_path = current_path + '/filmDescription.txt'

if File.exist? file_path
  f = File.new file_path
  lines = f.readlines
  f.close
  number = rand(lines.length)

  if number % 2 == 1
    number -= 1
  end

  puts lines[number]
  puts lines[number + 1]
else
  puts 'File did not found'
end
