def run_5_times
  5.times do
    yield
  end
end

run_5_times { pp 'Something' }
puts

def run_6_times
  index = 0
  while index < 6
    yield index, 33
    index += 1
  end
end

run_6_times { |index, value| pp "Something else, index: #{index} value: #{value}" }
