def secondary_method
  yield 'Hello here'
end

def my_method(message, callable_1, callable_2)
  callable_1.call('Hello there')
  callable_2.call(message)
  pp message
end

my_method 'Calling block...', ->(message) { puts message }, ->(message) { puts message.upcase.inspect }



puts



def secondary_method
  yield 'Hello bro'
end

def my_method(message, callable_1, callable_2)
  callable_1.call('Hello man')
  callable_2.call(message)
end

my_lambda_1 = ->(message) { puts message }
my_lambda_2 = ->(message) { puts message }

message = 'Calling block...'

my_method message, my_lambda_1, my_lambda_2
