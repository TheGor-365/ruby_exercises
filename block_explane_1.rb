greetings = ['hi', 'howdy', 'hello', 'yooo', 'wasup']

greetings.length.times do |greeting|
  puts '-----------'
  puts greeting + 1
  puts '-----------'

  puts greetings.sample
  puts greetings[greeting]
end

puts
puts


greetings.each do |greeting|
  puts greeting
end

puts
puts


formatted_greetings = greetings.map do |greeting|
  greeting = greeting[0].upcase + greeting[1..greeting.length]
end

puts
puts

formatted_greetings.each do |greeting|
  puts greeting
end
