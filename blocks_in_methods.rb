def my_filter(coll)
  result = []
  coll.each do |elem|
    result << elem if yield(elem)
  end
  result
end

coll = [1, 2, 3]

puts my_filter(coll, &:even?)
puts
puts my_filter(coll, &:odd?)
