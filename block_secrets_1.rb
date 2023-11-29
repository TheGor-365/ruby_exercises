def display_1
  yield 'whatsup_1'
end

display_1 do |message|
  pp "#{message.upcase} " * 3
end; puts




def display_2(&block)
  pp block
  block.call('whatsup_2')
end

display_2 do |message|
  pp message
end; puts




def display_3
  yield 'whatsup_3'
end

my_lambda = -> (message) { pp message.upcase }

display_3(&my_lambda); puts




def secondary_method
  yield 'whatsup_5'
end

def display_4(message, &block)
  pp message
  secondary_method(&block)
end

display_4('whatsup_4', &my_lambda)
