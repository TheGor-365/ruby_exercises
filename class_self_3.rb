cat = String.new 'cat'

def cat.speak
  'miaow'
end

pp cat.speak
pp cat.singleton_methods


puts


One = Class.new

def One.speak
  "I'm class One"
end

pp One.speak
pp One.singleton_methods


puts


class One
  def self.classs_method
    'in One#classs_method'
  end
end

pp One.singleton_methods
pp One.classs_method
pp One.speak


puts


class Two
  def self.classs_method
    true
  end

  def instancce_method
    true
  end
end

pp Two.classs_method
pp Two.new.instancce_method


puts


module Modulle
  def self.classs_method
    true
  end

  def iinstancce_method
    true
  end
end

pp Modulle.classs_method
