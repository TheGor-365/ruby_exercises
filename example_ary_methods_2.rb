# select
puts 'Select:'
puts "people_ages = #{(people_ages = [ [34, 1], [23, 0], [44, 0] ]).inspect}"
puts
puts 'people_ages.select { |element| element[0] == 23 && element[1] == 0 }'
puts (people_ages.select { |element| element[0] == 23 && element[1] == 0 }).inspect

puts 'people_ages.select { |element| element[1] == 0 }'
puts (people_ages.select { |element| element[1] == 0 }).inspect
puts '-' * 50


# reject
puts 'Reject:'
puts "people_ages = #{(people_ages = [ [34, 1], [23, 0], [44, 0] ]).inspect}"
puts
puts 'people_ages.reject { |element| element[0] >= 30 }'
puts (people_ages.reject { |element| element[0] >= 30 }).inspect
puts '-' * 50


# take
puts 'Take:'
puts "people_ages = #{(people_ages = [ [34, 1], [23, 0], [44, 0] ]).inspect}"
puts
puts 'people_ages.take(2).inspect'
puts people_ages.take(2).inspect
puts '-' * 50

# any
puts 'Any:'
puts "people_ages = #{(people_ages = [ [34, 1], [23, 0], [44, 0] ]).inspect}"
puts
puts 'people_ages.any? { |element| element[0] == 23 && element[1] == 0 }'
puts "people_ages = #{(people_ages.any? { |element| element[0] == 23 && element[1] == 0 }).inspect}"
puts '-' * 50

# all
puts 'All'
puts "people_ages = #{(people_ages = [ [34, 1], [23, 0], [44, 0] ]).inspect}"
puts
puts 'people_ages.all? { |element| element.size >=2 }'
puts "people_ages = #{(people_ages.all? { |element| element.size >=2 }).inspect}"
puts '-' * 50
