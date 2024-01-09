result = { a: 1, b: 2, c: 3 }.reduce(0) { |sum, (key, value)| sum + value }
pp result; puts





team = { vasya: [1, 3, 5], katya: [2, 2, 1], vadik: [1, 2, 8] }

result = team.reduce(0) { |sum, (player, scores)| sum + scores.sum }
pp result; puts





words = %w[ рязань такси почасовая купонов море таганрог солянка сборная мясная эгида ткани каталог ]

result = words.reduce({}) do |hash, word|
  hash[word.size] ||= []
  hash[word.size] << word
  hash
end
pp result; puts





result = words.each_with_object({}) do |word, hash|
  hash[word.size] ||= []
  hash[word.size] << word
end
pp result; puts





pp [{a: 1}, {b: 2}, {c: 3}].each_with_object({}) { |element, hash| hash.merge!(element) }; puts





passengers = [
  { name: 'Вадик', weight: 74, luggage_weight: 5 },
  { name: 'Саша', weight: 105, luggage_weight: 8 },
  { name: 'Катя', weight: 50, luggage_weight: 20 }
]

result = passengers.reduce([0, 0]) do |weights, passenger|
  [weights.first + passenger[:weight], weights.last + passenger[:luggage_weight]]
end
pp result; puts





incomes = [ 150_800, 345_100, 501_200, 689_500 ]

result = incomes.inject([]) do |sum_array, income|
  sum = sum_array.last || 0
  sum_array.push(sum + income)
end
pp result; puts





words = %w{ cat sheep bear }

longest = words.reduce(words.first) do |memo, word|
  memo.length > word.length ? memo : word
end
pp longest
