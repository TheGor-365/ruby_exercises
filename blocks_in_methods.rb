def collection_filter(collection)
  result = []

  collection.each do |element|
    result << element if yield(element)
  end

  pp result
end

numbers = [ 1, 2, 3, 4, 5 ]

collection_filter(numbers, &:even?); puts





numbers.each do |element|
  pp element.even?
end; puts





collection_filter numbers do |c|
  pp c.inspect
end; puts





collection_filter(numbers, &:odd?)

numbers.each do |element|
  pp element.odd?
end; puts





collection_filter(numbers, &:to_s)

numbers.each do |element|
  pp element.to_s
end
