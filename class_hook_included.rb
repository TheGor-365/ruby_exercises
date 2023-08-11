module M
  def self.included(base)
    base.extend(ClassMethods)
  end

  def speak_up(input)
    puts input.upcase
  end

  module ClassMethods
    def who_am_i
      puts 'i am ' + self.to_s
    end
  end
end

class C
  include M
  who_am_i
end

puts

pp c = C.new.speak_up('Sarah')

puts

pp C.who_am_i

puts
