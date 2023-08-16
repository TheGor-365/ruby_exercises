pp 'hello'.gsub(/[aeiou]/, '*')
pp 'hello'.gsub(/([aeiou])/, '<\1>')
pp 'hello'.gsub(/./) { |s| s.ord.to_s + ' ' }
pp 'hello'.gsub(/(?<foo>[aeiou])/, '{ \k<foo> }')
pp 'hello'.gsub(/[eo]/, 'e': 3, 'o': '*')
