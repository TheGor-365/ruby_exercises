require 'pry-stack_explorer'

def alpha
  greeting = 'hello'
  beta; pp greeting
end

def beta
  binding.pry
end

alpha

# show-stack
# frame 1
