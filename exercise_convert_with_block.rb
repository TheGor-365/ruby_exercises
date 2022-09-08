def convert(strings)
  strings.filter { |str| str.end_with?('?') }
  .map(&:downcase)
  .sort
end

strings = ['wow?', 'One?', 'tWo!', 'THREE']

puts convert strings
