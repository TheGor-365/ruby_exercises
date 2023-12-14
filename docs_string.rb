# String

puts '<< int(chr)'
x = '- Hey man...'
y = ' - Hey bro'

pp x << y << 33 << 33; puts




puts 'center'
x = 'Hello wotld'.center(8)
y = 'Hello wild world             '.center(1)
z = '   Hello wotld   '.center(7)

pp x, y, z; puts





puts 'clear'
x = 'Hey there!'.clear

pp x; puts





puts 'concat'
x = 'Hey '
y = ' there'
z = '-'
a = 33

x.concat(z, y, 33)

pp x; puts





puts 'each_char'
x = 'Hey there!'

x.each_char { |item| pp item.upcase, ' ' }; puts





puts 'hash'
x = 'Hey there'.hash

pp x; puts





puts 'replace'
x = 'Hey'.replace 'Hey there!'

pp x; puts





puts 'insert'
x = 'Hey'.insert(1, 'a')

pp x; puts





puts 'intern'
x = 'Bingo'.intern

if x == :Bingo
  pp x
end; puts





puts 'ljust'
x = 'Hey there!'.ljust(30, '!?')
y = 'Winter'.ljust(15)
z = 'punch'

pp x, y + z; puts





puts 'split'
x = 'Hey there Bill'.split

pp x[1]
