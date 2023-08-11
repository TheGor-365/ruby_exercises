class Zen
end

z1 = Zen.new
z2 = Zen.new

class << z1
  def say_hello
    puts "Hello!"
  end
end

z1.say_hello

puts


class Hi
  self
  class << self
    self
    self == Hi.singleton_class
  end
end

hi = String.new

def hi.a
end

pp hi.class.instance_methods.include? :a
pp hi.singleton_class.instance_methods.include? :a

puts


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
