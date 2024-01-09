numbers = [ 3, 5, 1, 4 ]



result = numbers.reduce(0) { |sum, number| sum + number }
pp result; puts





words = %w[ Московский государственный университет ]

result = words.reduce('') { |abbr, word| abbr + word[0].upcase }
pp result; puts






result = numbers.reduce(0) do |sum, number|
  pp "sum: #{sum}, number: #{number}, result = #{sum + number}"
  sum + number
end
pp result; puts






result = numbers.reduce(100) { |sum, number| sum + number }
pp result; puts





result = numbers.reduce do |sum, number|
  puts "sum: #{sum}, number: #{number}, result = #{sum + number}"
  sum + number
end
pp result; puts





result = numbers.reduce { |sum, element| sum.+(element) }
pp result; puts





pp numbers.reduce(&:+); puts





pp [{a: 1}, {b: 2}, {c: 3}].reduce({}, :merge); puts





pp (1..5).inject(:*); puts





words = %w[
  достижение прогресс продвижение шаг вперед успешность успеваемости удача сдвиг прорыв
  удар хит исход ход радость обеспечение аванс реализации развития счастье наступление
]

result = ('а'..'я').reduce({}) do |result, letter|
  result[letter.to_sym] = words.select { _1.start_with?(letter) }
  result
end
pp result; puts
