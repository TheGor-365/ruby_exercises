require 'pry-stack_explorer'

def alpha
  x = "hello"
  beta
  puts x
end

def beta
  binding.pry
end

alpha

# show-stack
# frame 1
