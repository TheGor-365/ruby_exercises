require 'debug'

puts 'Solve equetion: A * x^2 + B * x + C = 0'

puts 'Enter A: '
a = gets.to_f

puts 'Enter B: '
b = gets.to_f

puts 'Enter C: '
c = gets.to_f

abort 'It is linear equation' if a == 0

discr = b * b - 4 * a * c

binding.break
x1 = (-b + Math::sqrt(discr)) / (2 * a)
x2 = (-b - Math::sqrt(discr)) / (2 * a)

puts 'Solution 1:'
puts x1
puts 'Solution 2:'
puts x2
