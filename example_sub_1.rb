p "hello".sub(/[aeiou]/, '*')
p "hello".sub(/([aeiou])/, '<\1>')
p "hello".sub(/./) {|s| s.ord.to_s + ' ' }
p "hello".sub(/(?<foo>[aeiou])/, '*\k<foo>*')
p 'Is SHELL your preferred shell?'.sub(/[[:upper:]]{2,}/, ENV)
