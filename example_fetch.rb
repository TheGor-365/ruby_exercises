hash = { foo: 0, bar: 1, baz: 2 }

pp hash.fetch(:bar)

puts


pp hash.fetch(:no_such, :default)
pp hash.fetch(:foo)

puts


pp hash.fetch(:no_such) { |key| "No key #{key}" }
pp hash.fetch(:baz) { |key| "No key #{key}" }
