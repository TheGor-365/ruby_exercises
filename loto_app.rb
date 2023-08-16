def sum_of_digits num_as_string
  sum = 0
  
  num_as_string.each_char do |char|
    sum += char.to_i
  end
  sum
end

def happy? number
  num_as_string = number.to_s
  half_count    = num_as_string.length / 2
  left_sum      = sum_of_digits num_as_string[0, half_count]
  right_sum     = sum_of_digits num_as_string[half_count..]

  left_sum == right_sum
end

pp happy?(77)
pp happy?(7881)
pp happy?(732930)
