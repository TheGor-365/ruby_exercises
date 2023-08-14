def reverse string
  result = ''
  string.each_char do |char|
    result = "#{char}#{result}"
  end
  result
end


pp reverse('gor')
