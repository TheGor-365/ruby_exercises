cat = String.new("cat")

def cat.speak
  'miaow'
end

pp cat.speak
pp cat.singleton_methods

puts


A = Class.new

def A.speak
  "I'm class A"
end

pp A.speak
pp A.singleton_methods

puts


class A
  def self.c_method
    'in A#c_method'
  end
end

pp A.singleton_methods
pp A.c_method
pp A.speak

puts
puts


class B
  def self.c_method
    true
  end

  def i_method
    true
  end
end

pp B.c_method
pp B.new.i_method

puts
puts


module M
  def self.c_method
    true
  end

  def i_method
    true
  end
end

pp M.c_method
