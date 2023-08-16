def convert(strings)
  strings.filter { |string| string.end_with?('?') }
  .map(&:downcase)
  .sort
end

strings = %w[ wow? One? tWo! THREE ]

pp convert strings
