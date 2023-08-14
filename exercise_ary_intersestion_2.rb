def intersection collection_1, collection_2
  result = []
  collection_1.each do |item|
    result << item if collection_2.include? item
  end
  result
end

puts intersection([1, 3, 8], [9, 3, 1])
puts intersection([8], [5, 0])
