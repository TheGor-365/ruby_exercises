def invert_case(str)
  result = ''

  str.each_char do |char|
    new_char = if char.upcase == char
      char.downcase
    else
      char.upcase
    end

    result = "#{result}#{new_char}"
  end
  result
end

puts invert_case('Hello, World!')
puts invert_case('I loVe JS')
