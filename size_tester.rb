ary = [0, 1, 2]
puts ary.size
puts '-' * 80

big = 0
ary.each_with_index do |el, i|
  i += 1
  big = i
end

puts big
