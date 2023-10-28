[:one, :two, :three].each_with_object({}) do |item, hash|
  pp hash[item] = item.to_s.upcase
  pp hash
  pp item
end


puts



(1..10).each_with_object([]) do |item, array|
  pp array << item ** 2
end


puts



['blue', 'yellow', 'white', 'brown'].each_with_object(Hash.new(0)) do |item, hash|
  pp hash[item] += 1
  pp hash
  pp item
end


puts



(1..10).each_with_object(0) do |item, sum|
  sum += item
  pp sum
end


puts



pp (1..11).reduce(:+); puts
pp (1..12).inject(:+); puts



array = (1..13).inject([]) do |array, item|
  array << item ** 2
end

pp array; puts



hash = [:toyota, :bmw, :ram].inject({}) do |hash, item|
  hash[item] = item.to_s.upcase
  hash
end

pp hash; puts



hash = { first: 1, second: 2, third: 3 }.each_with_object({}) do |(key, value), hash|
  hash[key] = value**2
end

pp hash; puts



array = { dog: 1, cat: 2, bird: 3 }.each_with_object([]) do |(key, value), array|
  array << { id: value, name: key }
end

pp array
