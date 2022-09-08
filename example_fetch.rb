h = { foo: 0, bar: 1, baz: 2 }
pp h.fetch(:bar)
puts



pp h.fetch(:nosuch, :default)
pp h.fetch(:foo)
puts



pp h.fetch(:nosuch) { |key| "No key #{key}" }
pp h.fetch(:baz) { |key| "No key #{key}" }
