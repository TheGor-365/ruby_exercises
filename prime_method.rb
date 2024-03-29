def prime(number)
  puts 'Not integer' unless number.is_a? Integer
  is_prime = true

  for num in 2..number - 1
    is_prime = false if number % num == 0
  end

  is_prime ? (pp "#{number} is prime") : (pp "#{number} is not prime")
end


prime(2)
prime(9)
prime(11)
prime(51)
prime(97)
