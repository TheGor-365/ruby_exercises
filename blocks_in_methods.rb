numbers = [ 1, 2, 3, 4, 5 ]


def collection_filter(collection, *result)
  collection.each do |element|
    result << element if yield(element)
  end; result
end

pp collection_filter(numbers, &:even?)
pp collection_filter(numbers, &:odd?); puts





evens = []
numbers.each { |element| evens << element.even? }
pp evens

odds = []
numbers.each { |element| odds << element.odd? }
pp odds; puts







pp collection_filter(numbers, &:to_s)

string = []
numbers.each do |element|
  string << element.to_s
end
pp string
