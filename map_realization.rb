def my_map(coll)
  result = []
  coll.each do |elem|
    result << yield(elem)
  end
  result
end

p my_map([1, 2, 3]) { |v| v * 2 }
