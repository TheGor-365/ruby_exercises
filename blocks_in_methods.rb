def my_filter(collection)
  result = []

  collection.each do |elem|
    result << elem if yield(elem)
  end

  result
end

my_collection = [1, 2, 3]

puts my_filter(my_collection, &:even?)
puts



puts my_filter(my_collection, &:odd?)
