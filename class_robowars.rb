@array_1 = Array.new(10, 1)
@array_2 = Array.new(10, 1)

def attack(array)
  sleep 0.5
  index = rand 0..9

  if array[index] == 1
    array[index] == 0
    pp "Robot with index #{index} destroyed"
  else
    pp 'No destroyed robots'
    sleep 0.3
  end
end

def victory?
  robots_left_1 = @array_1.count { |element| element == 1 }
  robots_left_2 = @array_2.count { |element| element == 1 }

  if robots_left_1 == 0
    pp "Team 2 wins, stay alive #{robots_left_2} robots"
    return true
  end

  if robots_left_2 == 0
    pp "Team 1 wins, stay alive #{robots_left_1} robots"
    return false
  end
end

def stats
  count_1 = @array_1.count { |element| element == 1 }
  count_2 = @array_2.count { |element| element == 1 }

  puts "First robots team: #{count_1} robots ready"
  puts "Second robots team: #{count_2} robots ready"
end

10.times do
  puts 'First team attack'
  attack @array_2
  exit if victory?
  stats; sleep 1; puts

  puts 'Second team attack'
  attack @array_1
  exit if victory?
  stats; sleep 1
end
