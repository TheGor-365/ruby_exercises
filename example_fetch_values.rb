hash = {
  'cat': 'feline',
  'dog': 'canine',
  'cow': 'bovine'
}


pp hash.fetch_values(:cow, :cat)
pp hash.fetch_values(:cow, :bird) { |value| value.upcase }


puts



hash = {
  foo: 0,
  bar: 1,
  baz: 2
}

symbols_array = %i[ bar foo bad bam baz mmm ]
values = hash.fetch_values(symbols_array) { |value| pp value.to_s }
