numbers = [ 1, 2, 3, 4, 5 ]


def collection_filter(collection, *result)
  collection.each do |element|
    result << element if yield(element)
  end; result
end

pp collection_filter(numbers, &:even?); puts
pp collection_filter(numbers, &:odd?); puts





result = []
numbers.each do |element|
  result << element.even?
end
pp result; puts

odds = []
numbers.each do |element|
  odds << element.odd?
end
pp odds; puts






collection_filter numbers do |number|
  pp number
end; puts







pp collection_filter(numbers, &:to_s); puts

string = []
numbers.each do |element|
  string << element.to_s
end
pp string
