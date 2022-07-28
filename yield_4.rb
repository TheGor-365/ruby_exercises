def run_5_times
  5.times do
    yield
  end
end

run_5_times {puts 'Something'}
puts

def run_6_times
  x = 0
  while x < 6
    yield x, 33
    x += 1
  end
end

run_6_times {|i, y| puts "Something else, index = #{i} value: #{y}"}
