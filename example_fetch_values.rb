hash = {
  "cat" => "feline",
  "dog" => "canine",
  "cow" => "bovine"
}

pp hash

puts

pp hash.fetch_values("cow", "cat")
pp hash.fetch_values("cow", "bird") { |key| key.upcase }

puts




hash = {
  foo: 0,
  bar: 1,
  baz: 2
}

pp hash

puts

values = hash.fetch_values( :bar, :foo, :bad, :bam, :baz, :mmm ) { |key| key.to_s }
pp values
