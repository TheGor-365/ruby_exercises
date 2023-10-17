def make_censored(text, stop_words)
  sentence = []

  for word in text.split(' ')
    stop_words.include?(word) ? (sentence << '$#%!') : (sentence << word)
  end
  sentence.join(' ')
end
