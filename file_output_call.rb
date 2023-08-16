require_relative 'filesOutputClass.rb'

input = ARGV[0]
file  = File.new input
lines = file.readlines

abort "File don't round!" unless File.exist? input

file.close

new_file = FileOutput.new


pp new_file.file_read
pp new_file.show_lines
