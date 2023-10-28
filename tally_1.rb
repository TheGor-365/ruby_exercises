list = %w[ a b b a c d d d e ]

pp list.group_by { |value| value }.map { |name, value| [name, value.size] }.to_h
pp list.each_with_object(Hash.new(0)) { |value, hash| hash[value] += 1 }



puts



hashes = [{name: 'Meagan' }, { name: 'Meagan' }, { name: 'Lauren' }]

pp hashes.group_by(&:itself).map { |name, value| name.merge(count: value.length)}



puts



list = %w[ a b b a c d d d e ]
pp list.tally



puts



the_hashes = [{name: 'Meagan' }, { name: 'Meagan' }, { name: 'Lauren' }]

pp the_hashes.tally
pp the_hashes.tally.map { |name, value| name.merge({count: value}) }
