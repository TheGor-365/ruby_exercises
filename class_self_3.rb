cat = String.new("cat")
def cat.speak
  'miaow'
end
p cat.speak
p cat.singleton_methods
puts

A = Class.new
def A.speak
  "I'm class A"
end
p A.speak
p A.singleton_methods
puts

class A
  def self.c_method
    'in A#c_method'
  end
end
p A.singleton_methods
p A.c_method
p A.speak
puts
puts

class B
  # class method
  def self.c_method
    true
  end
  # instance method
  def i_method
    true
  end
end
p B.c_method #=> true
# p B.i_method #=> failure
p B.new.i_method #=> true
# p B.new.c_method #=> failure
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
p M.c_method #=> true
# p M.i_method #=> failure
# p M.new.i_method #=> failure
# p M.new.c_method #=> failure
