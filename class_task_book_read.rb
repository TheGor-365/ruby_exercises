require_relative 'class_task_book_post.rb'
require_relative 'class_task_book_link.rb'
require_relative 'class_task_book_memo.rb'
require_relative 'class_task_book_task.rb'

require 'optparse'

options = {}

OptionParser.new do |opt|
  opt.banner = 'Usage: read.rb [options]'

  opt.on('-h', 'Prints this help') do
    puts opt
    exit
  end

  opt.on('--type POST_TYPE', 'Type of (default any)') { |o| options[:type] = o }
  opt.on('--id POST_ID', 'If get id - show by id') { |o| options[:id] = o }
  opt.on('--limit NUMBER', 'Limit output') { |o| options[:limit] = o }
end.parse!

result = Post.find(
  options[:limit],
  options[:type],
  options[:id]
)

if result.is_a? Post
  puts "Record: #{result.class.name}, id: #{options[:id]}"

  result.to_strings.each do |line|
    puts line
  end
else
  puts "id\t @type\t @created_at\t\t\t @text\t\t\t @url\t\t @due_date\t"

  result.each do |row|
    puts
    row.each do |element|
      print "| #{element.to_s.delete("\\n\\r")[0..40]}\t"
    end
  end
end
