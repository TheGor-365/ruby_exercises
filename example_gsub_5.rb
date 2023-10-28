pp sentence = 'This is a sample sentence.'

pp sentence.gsub(/a/, '')
pp sentence.gsub(/This/, '*')
pp sentence.gsub(/[^a]/, '*')


puts


pp sentence = 'Th1s 1s a sampl3 s3nt3nc3.'

pp sentence.gsub(/[0123456789]/, '!')
pp sentence.gsub(/[0-9]/, '!')
pp sentence.gsub(/[A-Za-z]/, '🔥')


puts


pp lorem = 'Lorem ipsum.'

pp lorem.gsub(/[\w]/, 'wow')
pp lorem.gsub(/[\W]/, 'wow')

pp lorem = 'L0r3m 1psum'
pp lorem.gsub(/[\d]/, '-')
pp lorem.gsub(/[\D]/, '-')


puts


pp cool_phrase = 'slow lorises are cool'
pp cool_phrase.gsub(/\w+/) {|word| word.capitalize}

pp year = 'The year is 3100'
pp year.gsub(/\d+/) { |number| number.to_i + 1 }


puts


pp phone_number = '(123)456-7890'
pp phone_number.gsub(/[()-], ''/)

pp steve = 'St97eve Brul()*)e '
pp steve.gsub(/[\W\d]/, '').split(/(?=[A-Z])/).join(' ')
