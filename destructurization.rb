def convert(languages)
  result = []
  languages.each do |name, _, typing_name|
    result << [name, typing_name]
  end
  result
  # The Ruby Way
  # languages.map { |(name, _, typing_name)| [name, typing_name] }
end

data = [
  ['ruby', 'dynamic', 'strong'],
  ['js', 'dynamic', 'weak'],
  ['c', 'static', 'weak'],
  ['kotlin', 'static', 'strong']
]

puts convert(data)
