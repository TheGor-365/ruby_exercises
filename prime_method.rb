def prime(number)
  puts "That's not an integer." unless number.is_a? Integer
  is_prime = true

  for i in 2..number - 1
    is_prime = false if number % i == 0
  end

  is_prime ? (puts "#{number} is prime!") : (puts "#{number} is not prime.")
end

prime(2)
prime(9)
prime(11)
prime(51)
prime(97)
