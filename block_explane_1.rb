greetings = ['hi', 'howdy', 'hello', 'yoooo', 'wasup']

greetings.length.times do |i|
  puts i
  puts greetings.sample
  puts greetings[i]
end
puts


greetings.each do |greeting|
  puts greeting
end


formatted_greetings = greetings.map do |greeting|
  greeting = greeting[0].upcase + greeting[1..greeting.length]
end

formatted_greetings.each do |greeting|
  puts greeting
end
