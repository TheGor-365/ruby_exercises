# def fizz_buzz(start, stop)
#   range = (start..stop).to_a
#   result = []
#
#   range.each do |n|
#     result << if (n % 3).zero? && (n % 5).zero?
#                 'FizzBuzz'
#               elsif (n % 5).zero?
#                 'Buzz'
#               elsif (n % 3).zero?
#                 'Fizz'
#               else
#                 n
#               end
#   end
#   result.join(' ') if start <= stop
#
# end

def fizz_buzz(start, stop)
  user_range = (start..stop).to_a
  check_number(user_range) if start <= stop
end

def check_number(ary)
  start = ary[0]
  result = []

  while start <= ary[-1]
    if (start % 3).zero? && (start % 5).zero?
      result << 'FizzBuzz'
    elsif (start % 5).zero?
      result << 'Buzz'
    elsif (start % 3).zero?
      result << 'Fizz'
    else
      result << start
    end

    start += 1
  end
  result.join(' ')
end
