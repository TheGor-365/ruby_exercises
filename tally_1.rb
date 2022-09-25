pp list = %w[ a b b a c d d d e ]

pp list.group_by { |v| v }.map { |k, v| [k, v.size] }.to_h
pp list.each_with_object(Hash.new(0)) { |v, h| h[v] += 1 }
puts '--------------------------------------------------------'
puts


pp hashes = [{name: "Meagan" }, { name: "Meagan" }, { name: "Lauren" }]
pp hashes.group_by(&:itself).map { |k, v| k.merge(count: v.length)}
puts '--------------------------------------------------------'
puts


pp list = %w[ a b b a c d d d e ]
pp list.tally
puts '--------------------------------------------------------'
puts


pp the_hashes = [{name: "Meagan" }, { name: "Meagan" }, { name: "Lauren" }]
pp the_hashes.tally
pp the_hashes.tally.map { |k, v| k.merge({count: v}) }
