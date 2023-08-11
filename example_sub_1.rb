pp "hello".sub(/[aeiou]/, '*')
pp "hello".sub(/([aeiou])/, '<\1>')
pp "hello".sub(/./) {|s| s.ord.to_s + ' ' }
pp "hello".sub(/(?<foo>[aeiou])/, '*\k<foo>*')
pp 'Is SHELL your preferred shell?'.sub(/[[:upper:]]{2,}/, ENV)
