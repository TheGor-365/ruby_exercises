pp 'dog'.gsub(/\w+/) { |animal| animal == 'dog' ? 'cat' : 'dog' }

puts

colors = {
  'B': 'blue',
  'G': 'green',
  'R': 'red'
}

pp 'BBBGRR'.gsub(/\w/, colors)
