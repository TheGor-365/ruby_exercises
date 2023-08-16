hi_proc = Proc.new { |message| pp message }
hi_lambda = lambda { |message| pp message }

double_proc = proc { |number| p number ** 2 }
double_lambda = ->(number) { p number ** 2 }

hi_proc.call 'hi'
hi_lambda.call 'hi'

double_proc.call 5
double_lambda.call 5

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

puts
puts



def block_check callable
  result = callable.call 'hi'

  pp "The result is #{result}"
  pp "I have called #{callable}"
end

block_check hi_lambda
puts
block_check block_lambda
puts
block_check block_proc
