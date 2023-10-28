def gen_diff(data_1, data_2)
  keys = data_1.keys | data_2.keys

  keys.each_with_object({}) do |key, hash|
    hash[key] = if !data_1.key?(key)
      'added'
    elsif !data_2.key?(key)
      'deleted'
    elsif data_1[key] == data_2[key]
      'unchanged'
    else
      'changed'
    end
  end
end

result = gen_diff(
  { one: 'eon', two: 'two', four: true },
  { two: 'own', zero: 4, four: true }
)

puts result
