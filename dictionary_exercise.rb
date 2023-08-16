hh = {
  'dog':  ['sobaka', 'pyos'],
  'cat':  ['koshka', 'kot'],
  'girl': ['devushka']
}

loop do
  print 'Enter word: '
  word = gets.strip
  translate = hh[word]

  pp "Translates: #{translate.size}"
  puts
  pp 'It is:'

  translate.each.with_index do |item, index|
    pp "#{index + 1}. #{item.capitalize}"
  end
end
