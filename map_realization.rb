def my_map collection
  result = []

  collection.each do |elem|
    result << yield(elem)
  end
  result
end

pp my_map([1, 2, 3]) { |v| v * 2 }
