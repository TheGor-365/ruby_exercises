require_relative "ary_qty_method.rb"
arr = [:Gor, :John, 12, 44, "aaa", "bbb", [cool: "deal"]]

puts arr.inspect

choice = ''
if choice != nil || !choice.is_a(Numeric)
  print "Enter number (0..#{arr.size}): "
  choice = STDIN.gets.to_i
end
puts "Your choice:"
select_item choice, arr
