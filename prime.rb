require 'prime'

def first_number_primes number
  return "number must be an integer." unless number.is_a? Integer
  return "number must be greater than 0." if number <= 0
  return Prime.first number
end

pp first_number_primes(10)
