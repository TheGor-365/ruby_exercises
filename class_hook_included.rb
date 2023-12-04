module Modulle
  def speak_up(input)
    pp input.upcase
  end

  module ClassMethods
    def who_am_i
      pp 'i am ' + self.to_s
    end
  end

  def self.included(base)
    base.extend(ClassMethods)
  end
end



class Klass
  include Modulle

  who_am_i
end; puts


Klass.new.speak_up('Sarah')
Klass.who_am_i
