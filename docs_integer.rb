# Integer

puts 'abs'
x = (-500).abs
y = (1000).abs
z = x * y

pp z

puts
puts


puts 'ceil'
x = 44.5.ceil(-1)

pp x

puts
puts


puts 'chr'
1.upto (255) do |index|
  pp "#{index} = #{index.chr}"
end

puts
puts


puts 'floor'
x = 5.83.floor(0)
y = -17.945.floor(2)
z = 19.1111.floor(2)

pp "#{x} #{y} #{z}"

puts
puts


puts 'gcd'
x = 5.gcd(10)
y = 24.gcd(89)

pp x, y

puts
puts


puts 'lcm'
x = 13.lcm(5)

pp x

puts
puts


puts 'next'
x = 1.next
y = x.next

pp x, y
