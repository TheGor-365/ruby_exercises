def intersection(array_1, array_2)
  result = []

  array_1.sort.each do |item|
    result << item if array_2.include? item
  end
  result
end

array_1 = [ 1, 8, 0 ]
array_2 = [ 1, 9, 0 ]

pp intersection(array_1, array_2)
