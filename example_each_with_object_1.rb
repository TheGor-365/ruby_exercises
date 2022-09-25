[:foo, :bar, :jazz].each_with_object({}) do |item, hash|
  pp hash[item] = item.to_s.upcase
  pp hash
  pp item
end
puts '------------------------------------'


(1..10).each_with_object([]) do |item, array|
  pp array << item ** 2
end
puts '------------------------------------'


['one', 'two', 'one', 'one'].each_with_object(Hash.new(0)) do |item, hash|
  pp hash[item] += 1
  pp hash
  pp item
end
puts '------------------------------------'


(1..10).each_with_object(0) do |item, sum|
  sum += item
  pp sum
end
puts '------------------------------------'


pp (1..10).reduce(:+)
puts '------------------------------------'


pp (1..10).inject(:+)
puts '------------------------------------'


ary = (1..10).inject([]) do |array, item|
  array << item ** 2
end
pp ary
puts '------------------------------------'


h = [:foo, :bar, :jazz].inject({}) do |hash, item|
  hash[item] = item.to_s.upcase
  hash
end
pp h
puts '------------------------------------'


h = { foo: 1, bar: 2, jazz: 3 }.each_with_object({}) do |(key, value), hash|
  hash[key] = value**2
end
pp h
puts '------------------------------------'


ary = { foo: 1, bar: 2, jazz: 3 }.each_with_object([]) do |(key, value), array|
  array << { id: value, name: key }
end
pp ary
puts '------------------------------------'
