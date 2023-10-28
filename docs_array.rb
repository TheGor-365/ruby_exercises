puts 'arr creating'
array = [ 1, "1", :two, "three", 1.5 ]

pp array
pp array[3]


puts


puts 'arr.new'
array = [ 1, 2, 3 ]

array = Array.new(4, :Go)
pp array


puts


puts 'Array.new'
array = Array.new(7) { |index| index.to_f }
pp array


puts


puts 'Array creating'
array = Array.new(4) { Array.new(3) {|index| index.to_s} }
pp array


puts


puts 'Array at'
array = [ 1, 3, 9 ]

array.at(0)
pp array.at(2)


puts


puts 'Take & Drop'
array = [ 1, 2, 3, 4, 5 ]

pp array.take(3)
pp array.drop(1)


puts


puts 'push, unshift'
array = [ 1, 2, 3, 4, 5, 6 ]

array.push('Gor')
pp array
array.unshift('Gor')
pp array


puts


puts 'insert'
array = [ 1, 2, 3, 4, 5, 6, 7 ]

array.insert(2, 'Gor')
pp array


puts


puts 'pop & shift'
array = [ 1, 2, 3, 4, 5, 6, 7 ]

array.pop(2)
array.shift(2)
pp array


puts


puts 'map'
array = [ 1, 2, 3, 4, 5, 6, 7 ]

array = array.map { |item| item ** 3 }
pp array


puts


puts 'select || reject'
array = [ 1, 2, 3, 4, 5, 6, 7 ]

array = array.select { |item| item >= 5 }
pp array


puts


puts 'new Array'
array_1 = [ 1, 2, 3, 4, 5, 6, 7 ]
array_2 = Array.new(array_1)
pp array_2


puts


puts 'new arr'
array = Array.new(7) { |item| item ** 3 }
pp array


puts


puts 'assoc'
array_1 = [ 1, 2, 3, 4, 5, 6, 7 ]
array_2 = %w[ a b c d e ]
array_3 = [ array_1, array_2 ]

pp array_3.assoc(0)
pp array_3.assoc(1)
pp array_3.assoc(2)


puts


puts 'at'
array = [1, 2, 3, 4, 5, 6, 7]

pp array[3]
pp array.at(3)


puts


puts 'bsearch'
array = [1, 2, 3, 4, 5, 6, 7]

array = array.bsearch { |item| 1 + item / 4 }
pp array


puts


puts 'clear'
array = [ 1, 2, 3, 4, 5, 6, 7 ]

pp array.clear


puts


puts 'collect'
array = [ 1, 2, 3, 4, 5, 6, 7 ]

array = array.collect { |item| item.to_s + ' Gor' }
puts array


puts


puts 'map.with_index'
array = [ 1, 2, 3, 4, 5, 6, 7 ]
array = array.map.with_index { |item, index| "#{item} > #{index}" }

pp array


puts


puts 'combination'
array = [ 1, 2, 3, 4, 5, 6, 7 ]
array = array.combination(6).to_a

pp array


puts


puts 'cycle'
array = %w[ a b c d ]
array = array.cycle(3) { |item| pp "#{item} + item" }


puts


puts 'delete'
array = %w[ a b c ]
array = array.delete ('c') {'not foutd'}

pp array


puts


puts 'index'
array = [ 1, 2, 3, 4, 5, 6, 7 ]

pp array.index { |item| item == 5 }


puts


puts 'replace'
array = [ 1, 2, 3, 4, 5, 6, 7 ]
array = array.replace(%w[ a b c ])

pp array


puts


puts 'insert'
array = [ 1, 2, 3, 4, 5, 6, 7 ]
array = array.insert(2, 'Gor', 'Gor')

pp array


puts


puts 'join'
array = [1, 2, 3, 4, 5, 6, 7]
array = array.join(' - ')

pp array


puts


puts 'first & last'
array = [ 1, 2, 3, 4, 5, 6, 7 ]

pp array.first(2)
pp array.last(2)


puts


puts 'max & min'
array = [ 1, 2, 3, 4, 5, 6, 7 ]

pp array.max
pp array.min


puts


puts 'max & min'
array = %w[ 16 Gor 1 ]

pp array.max
pp array.min


puts


puts 'product'
array = [ 1, 2, 3, 4, 5, 6, 7 ]

array = array.product(['Gor'])
pp array


puts


puts 'rassoc'
array = %w[[1, 2], [3, 4], [5, 6, 7]]
array = array.rassoc('1')

pp array


puts


puts 'reverse_each'
array = %w[ 1 2 3 4 5 6 7 ]

array.reverse_each { |item| pp "#{item} + #{'w'}" }


puts


puts 'rindex'
array = [ 1, 2, 3, 4, 4, 5, 6, 7 ]

target = array.rindex(4)
pp target


puts


puts 'rotate'
array_1 = [ 1, 2, 3, 4, 5, 6, 7 ]

array_2 = array_1.rotate(3)
pp array_2


puts


puts 'shuffle'
array_1 = [ 1, 2, 3, 4, 5, 6, 7 ]

array_2 = array_1.shuffle(random: Random.new(1))
pp array_2


puts


puts 'sum'
array_1 = [ 1, 2, 3, 4, 5, 6, 7 ]

pp array_1.sum

array_2 = %w[ 1 2 3 ]
pp array_2.sum('')
pp array_1.join(' ')


puts


puts 'sum'
array_1 = [ 1, 2, 3, 4, 5, 6, 7 ]

array_2 = array_1.sum { |item| item + item }
pp array_2


puts


puts 'values_at'
array = [ 1, 2, 3, 4, 5, 6, 7 ]

array = array.values_at(2..4)
pp array


puts


puts '|'
array_1 = [ 1, 2, 3, 4, 5, 6, 7, "a" ]
array_2 = [ "a", "b", "c", "d", 3 ]

pp array_1 | array_2
