def invert_case(string)
  result = ''

  string.each_char do |char|
    new_char = if char.upcase == char
      char.downcase
    else
      char.upcase
    end
    result += new_char
  end; result
end


pp invert_case('Hello, World!')
pp invert_case('I loVe JS')
