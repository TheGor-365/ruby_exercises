def average start, finish
  count, sum = (finish - start + 1), 0
  start.upto(finish) { |i| sum += i }
  sum.to_f / count
end

puts average 3, 9
