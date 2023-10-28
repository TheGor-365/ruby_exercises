class Zen
end

zen_1 = Zen.new
zen_2 = Zen.new

class << zen_1
  def say_hello
    pp 'hey'
  end
end

zen_1.say_hello


puts


class Hi
  self
  class << self
    self
    self == Hi.singleton_class
  end
end

hi = String.new

def hi.methodd
end

pp hi.class.instance_methods.include? :methodd
pp hi.singleton_class.instance_methods.include? :methodd


puts


class SomeClass
  class << self
    def test_1
    end
  end
end

test_object = SomeClass.new

def test_object.test_2
end

class << test_object
  def test_3
  end
end

pp "Singleton's methods of SomeClass"
pp SomeClass.singleton_methods

pp "Singleton's methods of test_object"
pp test_object.singleton_methods
