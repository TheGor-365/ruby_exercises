text = 'The will to win the desire to succeed the urge to reach your full potential'

def pig_it text
  text.split.map do |word|
    if /[A-Za-z]/ =~ word
      "#{word[1...word.length]}#{word[0]}ay"
    else
      word
    end
  end.join(' ')
end


pp pig_it(text)
