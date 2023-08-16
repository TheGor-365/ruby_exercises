require_relative 'exercise_ary_take_item_method.rb'

collection = [:Gor, :John, 12, 44, 'aaa', 'bbb', [cool: 'deal']]

pp collection
choice = ''

if choice != nil || !choice.is_a(Numeric)
  print "Enter number (0..#{collection.size}): "
  choice = STDIN.gets.to_i
end

puts 'Your choice:'
select_item choice, collection
