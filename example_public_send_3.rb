require 'active_support/all'

pp 'Module'.constantize  # => Module
pp 'Class'.constantize   # => Class
pp 'blargle'.constantize # => NameError: wrong constant name blargle
