array = %w[ John Joe Marcel John AJ Marcel John ]

hash = array.each_with_object(Hash.new(0)) do |element, hash|
  hash[element] += 1
end

pp hash; puts




array = %w[ <John's Person instance> <Marcel's Person instance> <Emmy's Person instance> ]

hash = array.each_with_object({}).with_index do |(element, hash), index|
  hash[element] = element.split("'")[0]
end

pp hash; puts




arr = %w[ tangerine peach apricot ]

new_array = arr.each_with_object([]) do |element, new_array|
  new_array << element + ' crayon'
  new_array << element + ' marker'
end

pp new_array
