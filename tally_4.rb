pp words = %w(the be to of and a in that have I it for not not not)

puts


word_counts = {}

words.each do |word|
  if word_counts[word]
    word_counts[word] += 1
  else
    word_counts[word] = 1
  end
end

pp word_counts

puts




word_counts = Hash.new(0)
words.each { |word| word_counts[word] += 1 }

pp word_counts

puts




pp words.each_with_object(Hash.new(0)) { |word, word_counts| word_counts[word] += 1 }
