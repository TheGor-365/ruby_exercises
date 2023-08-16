require 'pry-stack_explorer'

def alpha
  x = 'hello'
  beta
  pp x
end

def beta
  binding.pry
end

alpha

# show-stack
# frame 1
