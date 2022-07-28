def gen_diff(data1, data2)

  keys = data1.keys | data2.keys

  keys.each_with_object({}) do |key, acc|

    acc[key] = if !data1.key?(key)
      'added'
    elsif !data2.key?(key)
      'deleted'
    elsif data1[key] == data2[key]
      'unchanged'
    else
      'changed'
    end
  end
end

res = gen_diff(
  { one: 'eon', two: 'two', four: true },
  { two: 'own', zero: 4, four: true }
);

puts res
