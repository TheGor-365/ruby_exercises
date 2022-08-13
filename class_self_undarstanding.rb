class Zen
end

z1 = Zen.new
z2 = Zen.new

class << z1
  def say_hello
    puts "Hello!"
  end
end

z1.say_hello    # Output: Hello!
# z2.say_hello    # falsey
puts '-' * 90


class Hi
  self #=> Hi
  class << self #same as 'class << Hi'
    self #=> #<Class:Hi>
    self == Hi.singleton_class #=> true
  end
end

hi = String.new
def hi.a
end

pp hi.class.instance_methods.include? :a #=> false
pp hi.singleton_class.instance_methods.include? :a #=> true
puts '-' * 90



class SomeClass
  class << self
    def test
    end
  end
end

test_obj = SomeClass.new

def test_obj.test_2
end

class << test_obj
  def test_3
  end
end

pp "Singleton's methods of SomeClass"
pp SomeClass.singleton_methods
pp "Singleton's methods of test_obj"
pp test_obj.singleton_methods
puts '-' * 90
