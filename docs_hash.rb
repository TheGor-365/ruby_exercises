puts 'Hash.new, Hash puts'
rating = Hash.new
rating[:Gor] = 32

pp rating
pp [:Gor]
pp rating[:Gor]
pp "#{:Gor} #{rating[:Gor]}"; puts





puts 'New Hash'
hash = {}
hash[:Gor] = 'cool man', 'realy'

pp "#{:Gor} #{hash[:Gor][0]}, #{hash[:Gor][1]}"; puts





puts 'New Hash'
hash = Hash.new
target = 0
hash = { 'a': 32, 'b': 33, 'c': target }
hash['a'] = 32
hash['b'] = 33
hash['c'] = target

pp hash.keys
pp hash.values

hash.each do |name, value|
  pp "#{name} #{value}"
end

hash.each_key do |name|
  pp "#{name} #{hash[name]}"
end; puts





puts 'Hash x'
hash = Hash.new('Gor')

pp hash; puts





puts 'delete key'
hash = { 'a': 100, 'b': 200 }
hash.delete('a')

hash.each do |name, value|
  pp "#{name} #{value}"
end; puts





puts 'delete value'
hash = { 'a': 100, 'b': 200 }
hash.delete(100)

hash.each do |name, value|
  pp "#{name} #{value}"
end; puts





puts 'delete found'
hash = { 'a': 100, 'b': 200 }

hash.delete('element') { |element| "#{element} not found!" }
pp hash['element']
