def get_words_count_by_lang data
  # simple solution: data.split.tally
  words  = data.split
  result = {}
  words.each do |word|
    result[word] ||= 0
    result[word] += 1
  end
  result
end

text = 'php ruby php java javascript go go go'


pp get_words_count_by_lang text

# {
#   php: 2,
#   ruby: 1,
#   java: 1,
#   javascript: 1,
#   go: 3
# }
