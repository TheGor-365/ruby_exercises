def display_1
  yield "whatsup_1"
end

display_1 do |message|
  puts "#{message.upcase} " * 3
end
puts



def display_2(&block)
  puts block.inspect
  block.call("whatsup_2")
end

display_2 do |message|
  puts "#{message} " * 2
end
puts



def display_3
  yield "whatsup_3"
end

my_lambda = ->(message) { puts "#{message.upcase} " * 6 }
display_3 &my_lambda
puts



def secondary_method
  yield 'whatsup_5'
end

def display_4(message, &block)
  puts message
  secondary_method &block
end

display_4 "whatsup_4", &my_lambda
