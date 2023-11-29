def secondary_method
  yield 'Hello here'
end

def my_method(message, callable_1, callable_2)
  callable_1.call('Hello there')
  callable_2.call(message)
  pp message
end

my_method('calling block', -> (message) { pp message }, -> (message) { pp message.upcase }); puts




def secondary_method
  yield 'Hello bro'
end

def my_method(message, callable_1, callable_2)
  callable_1.call('hello man')
  callable_2.call(message)
  pp message
end

lambda_1 = -> (message) { pp message }
lambda_2 = -> (message) { pp message }
message  = 'calling block'

my_method(message, lambda_1, lambda_2)
