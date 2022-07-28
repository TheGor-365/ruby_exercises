def reverse(str)
  result = ''
  str.each_char do |c|
    result = "#{c}#{result}"
  end
  result
end

print reverse('gor')
