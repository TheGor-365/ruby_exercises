cars = %i[bmw toyota gmc]

upcased_cars_hashes = cars.each_with_object({}) do |item, hash|
  hash[item] = item.to_s.upcase
end

pp upcased_cars_hashes
puts



numbers = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]

multipled_numbers = numbers.each_with_object([]) do |item, array|
  array << item ** 2
end

pp multipled_numbers
puts



multipled_gig_nums = []
big_numbers = [ 111, 112, 113, 114, 115, 116, 117, 118, 119, 1110 ]

big_numbers.each do |item|
  multipled_gig_nums << item ** 2
end

pp multipled_gig_nums
puts



words = %w[one two one one two one one three]

words_counts = words.each_with_object(Hash.new(0)) do |item, hash|
  hash[item] += 1
end

pp words_counts
puts



ages = [ 34, 54, 56, 87, 98 ]

falsy_ages_sum = ages.each_with_object(0) do |item, sum|
  sum += item
end

pp falsy_ages_sum

truthy_ages_sum = ages.reduce(:+)
pp truthy_ages_sum

another_truthy_ages_sum = ages.inject(:+)
pp another_truthy_ages_sum

bes_way_sum = ages.sum
pp bes_way_sum
puts



ids = [ 34, 54, 56, 87, 98 ]

multipled_ids = ids.inject([]) do |array, item|
  array << item ** 2
end

pp multipled_ids
puts



animals = %i[cat dog horse]

upcased_animals_values = animals.inject({}) do |hash, item|
  hash[item] = item.to_s.upcase
  hash
end

pp upcased_animals_values
puts



params = { one: 1, two: 2, three: 3, four: 4 }

multipled_params = params.each_with_object({}) do |(key, value), hash|
  hash[key] = value**2
end

pp multipled_params
puts



options = { one: 1, two: 2, three: 3, four: 4 }

converted_options = options.each_with_object([]) do |(key, value), array|
  array << { id: value, name: key }
end

pp converted_options
puts
