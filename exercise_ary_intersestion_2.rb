def intersection(coll1, coll2)
  result = []
  coll1.each do |item|
    result << item if coll2.include? item
  end
  result
end

puts intersection([1, 3, 8], [9, 3, 1])
puts intersection([8], [5, 0])
