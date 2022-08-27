def display_1
  yield "whatsup"
end

display_1 do |msg|
  puts "#{msg} " * 3
end



def display_2(&block)
  puts block.inspect
  block.call("whatsup")
end
puts

display_2 do |msg|
  puts "#{msg} " * 2
end
puts



def display_3
  yield "whatsup"
end

l = ->(msg) { puts "#{msg} " * 6 }
display_3 &l
puts



def secondary_method
  yield '!!!'
end

def display_4(msg, &block)
  puts msg
  secondary_method &block
end

display_4 "my msg", &l
