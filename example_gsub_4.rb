p "hello".gsub(/[aeiou]/, '*')
p "hello".gsub(/([aeiou])/, '<\1>')
p "hello".gsub(/./) { |s| s.ord.to_s + ' ' }
p "hello".gsub(/(?<foo>[aeiou])/, '{ \k<foo> }')
p 'hello'.gsub(/[eo]/, 'e' => 3, 'o' => '*')
