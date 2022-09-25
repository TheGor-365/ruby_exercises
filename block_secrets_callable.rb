hi_proc = Proc.new { |msg| p msg }
hi_lambda = lambda { |msg| p msg }
i_proc = proc { |i| p i ** 3 }
i_lambda = ->(i) { p i ** 3 }

hi_proc.call 'hi'
hi_lambda.call 'hi'
i_proc.call 2
i_lambda.call 2
puts



block_lambda = ->(msg) do
  p 'hi'
  return msg
end

block_proc = proc do |msg|
  p 'hi'
  return msg
end


def block_check callable
  res = callable.call "hi"
  p "The result is --#{res}--"
  p "I have called #{callable.inspect}"
end

block_check hi_lambda
puts
block_check block_lambda
puts
block_check block_proc
puts
