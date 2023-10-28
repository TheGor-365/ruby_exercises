def pangram?(text)
  ('a'..'z').each { |char| return false unless text[char] }
  true
end

pangram     = 'A quick brown fox jumps over the lazy dog'
not_pangram = 'Something else'


pp pangram?(pangram)
pp pangram?(not_pangram)
