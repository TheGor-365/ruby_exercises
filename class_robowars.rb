@arr_1 = Array.new(10, 1)
@arr_2 = Array.new(10, 1)

def attack arr
  sleep 1
  i = rand 0..9
  if arr[i] == 1
    arr[i] == 0
    puts "Robot with index #{i} destroyed"
  else
    puts "No destroyed robots"
    sleep 1
  end
end

def victory?
  robots_left_1 = @arr_1.count { |x| x == 1 }
  robots_left_2 = @arr_2.count { |x| x == 1 }

  if robots_left_1 == 0
    puts "Team 2 wins, stay alive #{robots_left_2} robots"
    return true
  end

  if robots_left_2 == 0
    puts "Team 1 wins, stay alive #{robots_left_1} robots"
    return false
  end
end

def stats
  cnt_1 = @arr_1.count { |x| x == 1 }
  cnt_2 = @arr_2.count { |x| x == 1 }

  puts "First robots team: #{cnt_1} robots ready"
  puts "Second robots team: #{cnt_2} robots ready"
end

10.times do
  puts "First team attack..."
  attack @arr_2
  exit if victory?
  stats
  sleep 3
  puts

  puts "Second team attack..."
  attack @arr_1
  exit if victory?
  stats
  sleep 3
end
