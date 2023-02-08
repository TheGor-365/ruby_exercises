require_relative 'class_task_book_post.rb'
require_relative 'class_task_book_link.rb'
require_relative 'class_task_book_memo.rb'
require_relative 'class_task_book_task.rb'

puts "Wellcome"
puts "Add task"

choices = Post.post_types
choice = -1

until choice >= 0 && choice < choices.size
  choices.each_with_index do |type, index|
    puts "\t#{index}. #{type}"
  end

  choice = STDIN.gets.chomp.to_i
end

entry = Post.create(choice)

entry.read_from_console
entry.save

puts "New task created"