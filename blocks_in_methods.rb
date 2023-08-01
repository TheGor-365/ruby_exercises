def collection_filter(collection)
  result = []

  collection.each do |element|
    result << element if yield(element)
  end

  pp result
end

my_collection = [ 1, 2, 3 ]

collection_filter(my_collection, &:even?)

my_collection.each do |element|
  pp element.even?
end

puts
puts



collection_filter my_collection do |c|
  pp c.inspect
end

puts
puts



collection_filter(my_collection, &:odd?)

my_collection.each do |element|
  pp element.odd?
end

puts
puts



collection_filter(my_collection, &:to_s)

my_collection.each do |element|
  pp element.to_s
end
