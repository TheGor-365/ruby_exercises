def prime(n)
  puts "That's not an integer." unless n.is_a? Integer
  is_prime = true

  for i in 2..n-1
    is_prime = false if n % i == 0
  end

  is_prime ? (puts "#{n} is prime!") : (puts "#{n} is not prime.")
end

prime(2)
prime(9)
prime(11)
prime(51)
prime(97)
