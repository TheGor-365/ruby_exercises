def factorial(number)
  (1..number).reduce(:*)
end

def binomial(number, k)
  return 1 if (number - k) <= 0
  return 1 if k <= 0
  factorial(number) / ( factorial(k) * factorial( number - k ) )
end

def triangle(nth_line)
  (0..nth_line).map { |e| binomial(nth_line, e) }
end


pp triangle(5)
