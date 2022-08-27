def secondary_method
  yield "Hello"
end

def my_method(msg, callable, callable_2)
  callable.call("Hello")
  callable_2.call(msg)
end

my_method "Calling block...", ->(msg) { puts msg }, ->(msg) { puts msg.upcase.inspect }
puts



def secondary_method
  yield "Hello"
end

def my_method(msg, callable, callable_2)
  callable.call("Hello")
  callable_2.call(msg)
end

l_1 = ->(msg) { puts msg }
l_2 = ->(msg) { puts msg.upcase.inspect }
msg = "Calling block..."

my_method msg, l_1, l_2
