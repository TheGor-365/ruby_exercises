numbers = [ 1, 2, 3, 4, 5 ]


def collection_filter(collection)
  result = []
  collection.each do |element|
    result << element if yield(element)
  end
  pp result
end

collection_filter(numbers, &:even?); puts





result = []
numbers.each do |element|
  result << element.even?
end
pp result; puts





collection_filter numbers do |number|
  number.inspect
end; puts





collection_filter(numbers, &:odd?); puts





odds = []
numbers.each do |element|
  odds << element.odd?
end
pp odds; puts




collection_filter(numbers, &:to_s); puts




string = []
numbers.each do |element|
  string << element.to_s
end
string.inspect
