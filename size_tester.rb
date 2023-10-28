array = [ 0, 1, 2 ]
pp array.size


puts


big = 0
array.each_with_index do |element, index|
  index += 1
  big = index
end

pp big
