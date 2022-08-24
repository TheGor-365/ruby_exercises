pp h = {
  "cat" => "feline",
  "dog" => "canine",
  "cow" => "bovine"
}
puts

pp h.fetch_values("cow", "cat")
pp h.fetch_values("cow", "bird") { |key| key.upcase }

# pp h.fetch_values("cow", "bird")                  # raises KeyError
puts




pp h = {
  foo: 0,
  bar: 1,
  baz: 2
}
puts

pp values = h.fetch_values( :bar, :foo, :bad, :bam, :baz, :mmm ) { |key| key.to_s }
pp values
