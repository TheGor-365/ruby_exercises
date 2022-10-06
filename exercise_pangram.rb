def pangram? text
  ('a'..'z').each { |i| return false unless text[i] }
  true
end

pangram = 'A quick brown fox jumps over the lazy dog'
not_pangram = 'Something else'

p pangram?(pangram)
p pangram?(not_pangram)
