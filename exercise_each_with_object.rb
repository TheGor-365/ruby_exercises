def words_by_letters(sentence)
  words = sentence.split

  words.each_with_object({}) do |word, acc|
    acc[word[0]] ||= []
    acc[word[0]] << word
  end
end

sentence = 'hexlet helps people to become developers'

puts result = words_by_letters(sentence)
