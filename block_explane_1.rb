greetings = %w[ hi howdy hello yooo wasup ]


greetings.length.times do |greeting_index|
  pp greeting_index

  pp greetings.sample
  pp greetings[greeting_index]; puts
end; puts



greetings.each do |greeting|
  pp greeting
end; puts



formatted_greetings = greetings.map do |greeting|
  greeting = greeting[0].upcase + greeting[1..greeting.length]
end

formatted_greetings.each do |greeting|
  pp greeting
end
