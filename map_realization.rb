def my_map collection
  result = []

  collection.each do |element|
    result << yield(element)
  end
  result
end

pp my_map([1, 2, 3]) { |element| element * 2 }
