def average start, finish
  count, sum = (finish - start + 1), 0
  start.upto(finish) { |number| sum += number }
  sum.to_f / count
end

puts average 3, 9
