text = 'The will to win the desire to succeed the urge to reach your full potential'

def pig_it text
  text.gsub(/(\w)(\w+)*/, '\2\1ay')
end

pp pig_it(text)
