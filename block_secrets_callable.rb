hi_proc = Proc.new { |message| p message }
hi_lambda = lambda { |message| p message }
i_proc = proc { |i| p i ** 3 }
i_lambda = ->(i) { p i ** 3 }

hi_proc.call 'hi'
hi_lambda.call 'hi'
i_proc.call 2
i_lambda.call 2

puts
puts



block_lambda = ->(message) do
  pp 'hi'
  return message
end

block_proc = proc do |message|
  pp 'hi'
  return message
end


def block_check callable
  result = callable.call "hi"
  pp "The result is --#{result}--"
  pp "I have called #{callable.inspect}"
end

block_check hi_lambda
puts
block_check block_lambda
puts
block_check block_proc
puts
